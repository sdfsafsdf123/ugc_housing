Hey! Thanks for purchasing my script. Remember:
    - You are not allowed to resell or release my scripts


Requirements:
    - es_extended/qb-core/qbox
    - mysql-async or oxmysql
    - K4MB1 Starter shells (https://k4mb1maps.com/product/5015840)
    - tk_housing_props (Cfx Portal, you received it when you purchased this script)


Installing the script:
    1. Download the file and extract "tk_housing" into your resources folder
    2. Add "start tk_housing" into your server.cfg file
    3. Edit config.lua to your liking
    4. Import the SQL file(s) into your server's database
    5. Restart your server


More questions?
    - Join our Discord and open a ticket: https://discord.gg/YndnF9tkqu


Documentation:
    - https://tk-scripts.gitbook.io/docs/


Items:
    Icons for all of these items are in the "images" folder inside tk_housing, copy the ones you need into your inventory resource's image folder.

ox_inventory:
    ['furniture'] = {
        label = 'Furniture',
        weight = 1,
        stack = false,
    },

    ['house_key'] = {
        label = 'House key',
        weight = 20,
        stack = false,
    },

    ['diesel'] = {
        label = 'Diesel',
        weight = 500,
        stack = true,
    },

    ['pizza_dough'] = {
        label = 'Pizza Dough',
        weight = 250,
    },

    ['tomato'] = {
        label = 'Tomato',
        weight = 100,
    },

    ['cheese'] = {
        label = 'Cheese',
        weight = 150,
    },

    ['pasta'] = {
        label = 'Pasta',
        weight = 200,
    },

    ['raw_salmon'] = {
        label = 'Raw Salmon',
        weight = 250,
    },

    ['lemon'] = {
        label = 'Lemon',
        weight = 100,
    },

    ['butter'] = {
        label = 'Butter',
        weight = 100,
    },

    ['raw_chicken'] = {
        label = 'Raw Chicken',
        weight = 300,
    },

    ['pie_crust'] = {
        label = 'Pie Crust',
        weight = 200,
    },

    ['mixed_vegetables'] = {
        label = 'Mixed Vegetables',
        weight = 200,
    },

    ['milk'] = {
        label = 'Milk',
        weight = 250,
    },

    ['salt'] = {
        label = 'Salt',
        weight = 50,
    },

    ['potato'] = {
        label = 'Potato',
        weight = 200,
    },

    ['pizza'] = {
        label = 'Pizza',
        weight = 500,
        client = {
            status = {hunger = 300000},
            anim = 'eating',
            usetime = 2500,
            notification = 'You ate a pizza'
        },
    },

    ['lasagna'] = {
        label = 'Lasagna',
        weight = 450,
        client = {
            status = {hunger = 300000},
            anim = 'eating',
            usetime = 2500,
            notification = 'You ate some lasagna'
        },
    },

    ['baked_salmon'] = {
        label = 'Baked Salmon',
        weight = 350,
        client = {
            status = {hunger = 275000},
            anim = 'eating',
            usetime = 2500,
            notification = 'You ate baked salmon'
        },
    },

    ['chicken_pie'] = {
        label = 'Chicken Pie',
        weight = 400,
        client = {
            status = {hunger = 275000},
            anim = 'eating',
            usetime = 2500,
            notification = 'You ate a chicken pie'
        },
    },

    ['mac_and_cheese'] = {
        label = 'Mac and Cheese',
        weight = 350,
        client = {
            status = {hunger = 250000},
            anim = 'eating',
            usetime = 2500,
            notification = 'You ate mac and cheese'
        },
    },

    ['tomato_soup'] = {
        label = 'Tomato Soup',
        weight = 350,
        client = {
            status = {hunger = 200000},
            anim = 'eating',
            usetime = 2500,
            notification = 'You ate tomato soup'
        },
    },

    ['stuffed_potato'] = {
        label = 'Stuffed Potato',
        weight = 300,
        client = {
            status = {hunger = 225000},
            anim = 'eating',
            usetime = 2500,
            notification = 'You ate a stuffed potato'
        },
    },

qb-core / qs-inventory:
    ['furniture'] = {
        label = 'Furniture',
        weight = 1,
        unique = true,
    },

    ['house_key'] = {
        label = 'House key',
        weight = 20,
        unique = true,
    },

    ['diesel'] = {
        label = 'Diesel',
        weight = 500,
    },

    ['pizza_dough'] = {
        label = 'Pizza Dough',
        weight = 250,
    },

    ['tomato'] = {
        label = 'Tomato',
        weight = 100,
    },

    ['cheese'] = {
        label = 'Cheese',
        weight = 150,
    },

    ['pasta'] = {
        label = 'Pasta',
        weight = 200,
    },

    ['raw_salmon'] = {
        label = 'Raw Salmon',
        weight = 250,
    },

    ['lemon'] = {
        label = 'Lemon',
        weight = 100,
    },

    ['butter'] = {
        label = 'Butter',
        weight = 100,
    },

    ['raw_chicken'] = {
        label = 'Raw Chicken',
        weight = 300,
    },

    ['pie_crust'] = {
        label = 'Pie Crust',
        weight = 200,
    },

    ['mixed_vegetables'] = {
        label = 'Mixed Vegetables',
        weight = 200,
    },

    ['milk'] = {
        label = 'Milk',
        weight = 250,
    },

    ['salt'] = {
        label = 'Salt',
        weight = 50,
    },

    ['potato'] = {
        label = 'Potato',
        weight = 200,
    },

    ['pizza'] = {
        label = 'Pizza',
        weight = 500,
    },

    ['lasagna'] = {
        label = 'Lasagna',
        weight = 450,
    },

    ['baked_salmon'] = {
        label = 'Baked Salmon',
        weight = 350,
    },

    ['chicken_pie'] = {
        label = 'Chicken Pie',
        weight = 400,
    },

    ['mac_and_cheese'] = {
        label = 'Mac and Cheese',
        weight = 350,
    },

    ['tomato_soup'] = {
        label = 'Tomato Soup',
        weight = 350,
    },

    ['stuffed_potato'] = {
        label = 'Stuffed Potato',
        weight = 300,
    },