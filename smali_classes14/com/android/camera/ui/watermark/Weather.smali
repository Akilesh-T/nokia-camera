.class public Lcom/android/camera/ui/watermark/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/watermark/Weather$Conditions;,
        Lcom/android/camera/ui/watermark/Weather$Settings;,
        Lcom/android/camera/ui/watermark/Weather$SelectedCities;,
        Lcom/android/camera/ui/watermark/Weather$PreWarning;,
        Lcom/android/camera/ui/watermark/Weather$Hotcities;,
        Lcom/android/camera/ui/watermark/Weather$Views;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.evenwell.providers.weather"

.field public static final HOTCITIES_PROJECTION:[Ljava/lang/String;

.field public static final PREWARNING_PROJECTION:[Ljava/lang/String;

.field public static final READ_HUA_WEATHERVIEW_CITYNAME_ID_INDEX:I = 0x1

.field public static final READ_HUA_WEATHERVIEW_CITYNAME_INDEX:I = 0x3

.field public static final READ_HUA_WEATHERVIEW_CURRENT_AQI_INDEX:I = 0x13

.field public static final READ_HUA_WEATHERVIEW_CURRENT_CONDITION_INDEX:I = 0xf

.field public static final READ_HUA_WEATHERVIEW_CURRENT_TEMPERATURE_INDEX:I = 0xe

.field public static final READ_HUA_WEATHERVIEW_CURRENT_WIND_DIRECTION_INDEX:I = 0x10

.field public static final READ_HUA_WEATHERVIEW_CURRENT_WIND_LEVEL_INDEX:I = 0x11

.field public static final READ_HUA_WEATHERVIEW_DATE_INDEX:I = 0x6

.field public static final READ_HUA_WEATHERVIEW_DAYCONDITION_INDEX:I = 0x8

.field public static final READ_HUA_WEATHERVIEW_DAYINDEX_INDEX:I = 0x7

.field public static final READ_HUA_WEATHERVIEW_DAY_AQI_INDEX:I = 0xd

.field public static final READ_HUA_WEATHERVIEW_DAY_TEMPERTURE_INDEX:I = 0x9

.field public static final READ_HUA_WEATHERVIEW_DAY_WIND_DIRECT_INDEX:I = 0xb

.field public static final READ_HUA_WEATHERVIEW_DAY_WIND_LEVEL_INDEX:I = 0xc

.field public static final READ_HUA_WEATHERVIEW_ENGNAME_INDEX:I = 0x4

.field public static final READ_HUA_WEATHERVIEW_HUA_CITY_ID_INDEX:I = 0x2

.field public static final READ_HUA_WEATHERVIEW_ID_INDEX:I = 0x0

.field public static final READ_HUA_WEATHERVIEW_NIGHT_TEMPERTURE_INDEX:I = 0xa

.field public static final READ_HUA_WEATHERVIEW_REPORT_TIME_INDEX:I = 0x12

.field public static final READ_HUA_WEATHERVIEW_TIMEZONE:I = 0x5

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_01:I = 0x14

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_02_INDEX:I = 0x15

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_03_INDEX:I = 0x16

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_04_INDEX:I = 0x17

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_05_INDEX:I = 0x18

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_06_INDEX:I = 0x19

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_07_INDEX:I = 0x1a

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_08_INDEX:I = 0x1b

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_09_INDEX:I = 0x1c

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_10_INDEX:I = 0x1d

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_11_INDEX:I = 0x1e

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_12_INDEX:I = 0x1f

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_13_INDEX:I = 0x20

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_14_INDEX:I = 0x21

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_15_INDEX:I = 0x22

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_16_INDEX:I = 0x23

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_17_INDEX:I = 0x24

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_18_INDEX:I = 0x25

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_19_INDEX:I = 0x26

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_20_INDEX:I = 0x27

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_21_INDEX:I = 0x28

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_22_INDEX:I = 0x29

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_23_INDEX:I = 0x2a

.field public static final READ_HUA_WEATHERVIEW_WEATHER24_24_INDEX:I = 0x2b

.field public static final READ_SELECTEDCITY_CITYNAME_INDEX:I = 0x1

.field public static final READ_SELECTEDCITY_ENGCITYNAME_INDEX:I = 0x2

.field public static final READ_SELECTEDCITY_ID_CITY_INDEX:I = 0x0

.field public static final READ_SELECTEDCITY_IS_AUTOLOCATION:I = 0x3

.field public static final READ_SETTINGS_KEY_INDEX:I = 0x0

.field public static final READ_SETTINGS_VALUE_INDEX:I = 0x1

.field public static final READ_WEATHERVIEW_CITYNAME_ID_INDEX:I = 0x1

.field public static final READ_WEATHERVIEW_CITYNAME_INDEX:I = 0x2

.field public static final READ_WEATHERVIEW_CITY_TIMEZONE:I = 0x18

.field public static final READ_WEATHERVIEW_CONDITION_INDEX:I = 0x4

.field public static final READ_WEATHERVIEW_CURRENTDEGREE_INDEX:I = 0x5

.field public static final READ_WEATHERVIEW_ENGNAME_INDEX:I = 0x3

.field public static final READ_WEATHERVIEW_HEADLINE:I = 0x13

.field public static final READ_WEATHERVIEW_HIGHDEGREE_INDEX:I = 0x6

.field public static final READ_WEATHERVIEW_ID_INDEX:I = 0x0

.field public static final READ_WEATHERVIEW_IMGICON_INDEX:I = 0x8

.field public static final READ_WEATHERVIEW_LOWDEGREE_INDEX:I = 0x7

.field public static final READ_WEATHERVIEW_PM25:I = 0x17

.field public static final READ_WEATHERVIEW_RAINPROBABILITY:I = 0x11

.field public static final READ_WEATHERVIEW_REALFREETEMPERATURE:I = 0xe

.field public static final READ_WEATHERVIEW_SNOWPROBABILITY:I = 0x12

.field public static final READ_WEATHERVIEW_SUNRISE:I = 0x15

.field public static final READ_WEATHERVIEW_SUNSET:I = 0x16

.field public static final READ_WEATHERVIEW_UPDATETIME:I = 0x14

.field public static final READ_WEATHERVIEW_UPDATETIME_INDEX:I = 0xa

.field public static final READ_WEATHERVIEW_UVINDEX:I = 0xf

.field public static final READ_WEATHERVIEW_UVINDEXTEXT:I = 0x10

.field public static final READ_WEATHERVIEW_VISIBILITY:I = 0xd

.field public static final READ_WEATHERVIEW_WEATHER_URL_INDEX:I = 0xb

.field public static final READ_WEATHERVIEW_WINDCONDITION_INDEX:I = 0x9

.field public static final READ_WEATHERVIEW_WINDSPEED:I = 0xc

.field private static final SCHEME:Ljava/lang/String; = "content://"

.field public static final SELECTEDCITIES_PROJECTION:[Ljava/lang/String;

.field public static final SETTING_PROJECTION:[Ljava/lang/String;

.field public static final WEATHERVIEW_HUA_PROJECTION:[Ljava/lang/String;

.field public static final WEATHERVIEW_PROJECTION:[Ljava/lang/String;

.field public static final WEATHERVIEW_PROJECTION_OLD:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "cityName"

    aput-object v1, v0, v4

    const-string v1, "engName"

    aput-object v1, v0, v5

    const-string v1, "isAuto"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/ui/watermark/Weather;->SELECTEDCITIES_PROJECTION:[Ljava/lang/String;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "city_eng_name"

    aput-object v1, v0, v4

    const-string v1, "city_sc_name"

    aput-object v1, v0, v5

    const-string v1, "city_tc_name"

    aput-object v1, v0, v6

    const-string v1, "area_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/camera/ui/watermark/Weather;->HOTCITIES_PROJECTION:[Ljava/lang/String;

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "warningReportOrganization"

    aput-object v1, v0, v4

    const-string v1, "warningCategory"

    aput-object v1, v0, v5

    const-string v1, "warningCategoryIndex"

    aput-object v1, v0, v6

    const-string v1, "warningLevel"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "warningReportTime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "warningMsgTitle"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "warningMsgDetail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "isPush"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cityId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/watermark/Weather;->PREWARNING_PROJECTION:[Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "settingKey"

    aput-object v1, v0, v3

    const-string v1, "settingValue"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/ui/watermark/Weather;->SETTING_PROJECTION:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "cityId"

    aput-object v1, v0, v4

    const-string v1, "cityName"

    aput-object v1, v0, v5

    const-string v1, "engName"

    aput-object v1, v0, v6

    const-string v1, "condition"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "currentDegree"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "highDegree"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lowDegree"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imgIcon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "windCondition"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "updateTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "weatherURL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "windSpeed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "realFeelTemp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "uvIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "uvIndexText"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rainProbability"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "snowProbability"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "headLine"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "updateTime"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sunrise"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sunset"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "pm2_5"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "timezone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/watermark/Weather;->WEATHERVIEW_PROJECTION:[Ljava/lang/String;

    .line 84
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "cityId"

    aput-object v1, v0, v4

    const-string v1, "city_id"

    aput-object v1, v0, v5

    const-string v1, "cityName"

    aput-object v1, v0, v6

    const-string v1, "engName"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeZone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dayIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dayWeatherCondition"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dayTemperature"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nightTemperature"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dayWindDirection"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dayWindLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dayAQI"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "currentTemperature"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "currentWeatherCondition"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "currentWindDirection"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "currentWindLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "currentReportTime"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "AQI"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "weather24hrs_01"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "weather24hrs_02"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "weather24hrs_03"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "weather24hrs_04"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "weather24hrs_05"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "weather24hrs_06"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "weather24hrs_07"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "weather24hrs_08"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "weather24hrs_09"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "weather24hrs_10"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "weather24hrs_11"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "weather24hrs_12"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "weather24hrs_13"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "weather24hrs_14"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "weather24hrs_15"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "weather24hrs_16"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "weather24hrs_17"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "weather24hrs_18"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "weather24hrs_19"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "weather24hrs_20"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "weather24hrs_21"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "weather24hrs_22"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "weather24hrs_23"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "weather24hrs_24"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/watermark/Weather;->WEATHERVIEW_HUA_PROJECTION:[Ljava/lang/String;

    .line 181
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "cityId"

    aput-object v1, v0, v4

    const-string v1, "cityName"

    aput-object v1, v0, v5

    const-string v1, "engName"

    aput-object v1, v0, v6

    const-string v1, "condition"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "currentDegree"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "highDegree"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lowDegree"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imgIcon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "windCondition"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "updateTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "weatherURL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "windSpeed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "realFeelTemp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "uvIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "uvIndexText"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rainProbability"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "snowProbability"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "headLine"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "updateTime"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sunrise"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sunset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/watermark/Weather;->WEATHERVIEW_PROJECTION_OLD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    return-void
.end method
