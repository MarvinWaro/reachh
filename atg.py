from autogen import AssistantAgent, UserProxyAgent

config_list = [
   {
        "api_type": "open_ai",
        "api_base": "http://localhost:1234/v1",
        "api_key": "NULL"
    }
]

llm_config={
    "request_timeout": 6000,
    "seed": 11,
    "config_list": config_list,
    "temperature": 0.3
}

assistant = AssistantAgent(
    name="CTO",
    llm_config=llm_config,
    system_message="You're a senior python developer, create programs based on the prompt, you should only output python codes, no explanations"
)

user_proxy = UserProxyAgent(
    name="user_proxy",
    human_input_mode="NEVER",
    max_consecutive_auto_reply=10,
    is_termination_msg=lambda x: x.get("content", "").rstrip().endswith("TERMINATE"),
    code_execution_config={"work_dir": "web"},
    llm_config=llm_config,
    system_message="Check the code submitted by the assistant and Reply TERMINATE if task has been solved otherwise point out the problems"
)

task = """
create a fizzbuzz python script and save it on fz.py
"""

user_proxy.initiate_chat(
    assistant,
    message=task
)