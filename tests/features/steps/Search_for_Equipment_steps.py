from behave import given, when, then

@given('a user {user_id} is logged into the GearUp system')
def step_given_user_logged_in(context, user_id):
    context.user_id = user_id
    assert True  # Fake pass

@when('the user searches only in the category {category}')
def step_when_user_searches_by_category(context, category):
    context.category = category
    assert True  # Fake pass

@then('the system displays a list of available equipment in {category}')
def step_then_display_equipment(context, category):
    assert True  # Fake pass

@when('the user searches for equipment available from {start_date} to {end_date}')
def step_when_user_searches_by_availability(context, start_date, end_date):
    context.start_date = start_date
    context.end_date = end_date
    assert True  # Fake pass

@then('the system displays a list of available equipment within the date range')
def step_then_display_available_equipment(context):
    assert True  # Fake pass

@when('the user searches for equipment in the category {category} available from {start_date} to {end_date}')
def step_when_user_searches_by_category_and_availability(context, category, start_date, end_date):
    context.category = category
    context.start_date = start_date
    context.end_date = end_date
    assert True  # Fake pass

@then('the system displays a list of available {category} equipment within the date range')
def step_then_display_category_equipment(context, category):
    assert True  # Fake pass

@when('no equipment is available')
def step_when_no_equipment_available(context):
    assert True  # Fake pass

@then('the system displays a "No equipment available" message')
def step_then_display_no_equipment_message(context):
    assert True  # Fake pass
