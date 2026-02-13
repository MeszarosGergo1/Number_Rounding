from behave import given, when, then
from src.number_rounding import round_number

@given('the number is {number}')
def step_given_number(context, number):
    context.number = float(number)

@given('the number of decimals is {decimals}')
def step_given_number(context, decimals):
    context.decimals = int(decimals)

@when('I round the number')
def step_when_round_number(context):
    context.result = round_number(float(context.number), int(context.decimals))

@then('the result should be {result}')
def step_when_rounding_numbers_result(context, result):
    assert context.result == result