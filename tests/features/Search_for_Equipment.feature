Feature: Search for Sports Equipment

  Scenario Outline: User Searches for Equipment by Category (Normal Flow)
    Given a user <user_id> is logged into the GearUp system
    When the user searches only in the category <category>
    Then the system displays a list of available equipment in <category>

    Examples:
      | user_id  | category     |
      | user_001 | Skis         |
      | user_002 | Snowboards   |
      | user_003 | Ice Skates   |
      | user_004 | Ski Boots    |

  Scenario Outline: User Searches for Equipment by Availability (Normal Flow)
    Given a user <user_id> is logged into the GearUp system
    When the user searches for equipment available from <start_date> to <end_date>
    Then the system displays a list of available equipment within the date range

    Examples:
      | user_id  | start_date  | end_date    |
      | user_005 | 2025-02-10  | 2025-02-15  |
      | user_006 | 2025-03-01  | 2025-03-07  |
      | user_007 | 2025-04-05  | 2025-04-10  |

  Scenario Outline: User Searches for Equipment with No Results (Error Flow)
    Given a user <user_id> is logged into the GearUp system
    When the user searches only in the category <category>
      And no equipment is available
    Then the system displays a "No equipment available" message

    Examples:
      | user_id  | category     |
      | user_008 | Snowshoes    |
      | user_009 | Hockey Gear  |
      | user_010 | Surfboards   |

  Scenario Outline: User Searches for Equipment by Category and Availability (Advanced Flow)
    Given a user <user_id> is logged into the GearUp system
    When the user searches for equipment in the category <category> available from <start_date> to <end_date>
    Then the system displays a list of available <category> equipment within the date range

    Examples:
      | user_id  | category    | start_date  | end_date    |
      | user_011 | Skis        | 2025-01-15  | 2025-01-20  |
      | user_012 | Snowboards  | 2025-02-05  | 2025-02-12  |
      | user_013 | Ice Skates  | 2025-03-10  | 2025-03-15  |
