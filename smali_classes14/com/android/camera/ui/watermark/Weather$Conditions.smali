.class public final Lcom/android/camera/ui/watermark/Weather$Conditions;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/watermark/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Conditions"
.end annotation


# static fields
.field public static final ACCU_CONTENT_URI:Landroid/net/Uri;

.field public static final COLUMN_NAME_CITY_ID:Ljava/lang/String; = "cityId"

.field public static final COLUMN_NAME_CONDITION:Ljava/lang/String; = "condition"

.field public static final COLUMN_NAME_CURRENTDEGREE:Ljava/lang/String; = "currentDegree"

.field public static final COLUMN_NAME_CURRENT_AQI:Ljava/lang/String; = "AQI"

.field public static final COLUMN_NAME_CURRENT_CONDITION:Ljava/lang/String; = "currentWeatherCondition"

.field public static final COLUMN_NAME_CURRENT_REPORT_TIME:Ljava/lang/String; = "currentReportTime"

.field public static final COLUMN_NAME_CURRENT_TEMPERATURE:Ljava/lang/String; = "currentTemperature"

.field public static final COLUMN_NAME_CURRENT_WIND_DIRECTION:Ljava/lang/String; = "currentWindDirection"

.field public static final COLUMN_NAME_CURRENT_WIND_LEVEL:Ljava/lang/String; = "currentWindLevel"

.field public static final COLUMN_NAME_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_NAME_DAY_AQI:Ljava/lang/String; = "dayAQI"

.field public static final COLUMN_NAME_DAY_INDEX:Ljava/lang/String; = "dayIndex"

.field public static final COLUMN_NAME_DAY_TEMPERTURE:Ljava/lang/String; = "dayTemperature"

.field public static final COLUMN_NAME_DAY_WIND_DIRECT:Ljava/lang/String; = "dayWindDirection"

.field public static final COLUMN_NAME_DAY_WIND_LEVEL:Ljava/lang/String; = "dayWindLevel"

.field public static final COLUMN_NAME_HEADLINE:Ljava/lang/String; = "headLine"

.field public static final COLUMN_NAME_HIGHDEGREE:Ljava/lang/String; = "highDegree"

.field public static final COLUMN_NAME_HUA_CITY_ID:Ljava/lang/String; = "city_id"

.field public static final COLUMN_NAME_HUA_CONDITION_INDEX:Ljava/lang/String; = "weather_index"

.field public static final COLUMN_NAME_HUA_DAY_CONDITION:Ljava/lang/String; = "dayWeatherCondition"

.field public static final COLUMN_NAME_HUA_TIMEZONE:Ljava/lang/String; = "timeZone"

.field public static final COLUMN_NAME_HUA_WEATHER24_01:Ljava/lang/String; = "weather24hrs_01"

.field public static final COLUMN_NAME_HUA_WEATHER24_02:Ljava/lang/String; = "weather24hrs_02"

.field public static final COLUMN_NAME_HUA_WEATHER24_03:Ljava/lang/String; = "weather24hrs_03"

.field public static final COLUMN_NAME_HUA_WEATHER24_04:Ljava/lang/String; = "weather24hrs_04"

.field public static final COLUMN_NAME_HUA_WEATHER24_05:Ljava/lang/String; = "weather24hrs_05"

.field public static final COLUMN_NAME_HUA_WEATHER24_06:Ljava/lang/String; = "weather24hrs_06"

.field public static final COLUMN_NAME_HUA_WEATHER24_07:Ljava/lang/String; = "weather24hrs_07"

.field public static final COLUMN_NAME_HUA_WEATHER24_08:Ljava/lang/String; = "weather24hrs_08"

.field public static final COLUMN_NAME_HUA_WEATHER24_09:Ljava/lang/String; = "weather24hrs_09"

.field public static final COLUMN_NAME_HUA_WEATHER24_10:Ljava/lang/String; = "weather24hrs_10"

.field public static final COLUMN_NAME_HUA_WEATHER24_11:Ljava/lang/String; = "weather24hrs_11"

.field public static final COLUMN_NAME_HUA_WEATHER24_12:Ljava/lang/String; = "weather24hrs_12"

.field public static final COLUMN_NAME_HUA_WEATHER24_13:Ljava/lang/String; = "weather24hrs_13"

.field public static final COLUMN_NAME_HUA_WEATHER24_14:Ljava/lang/String; = "weather24hrs_14"

.field public static final COLUMN_NAME_HUA_WEATHER24_15:Ljava/lang/String; = "weather24hrs_15"

.field public static final COLUMN_NAME_HUA_WEATHER24_16:Ljava/lang/String; = "weather24hrs_16"

.field public static final COLUMN_NAME_HUA_WEATHER24_17:Ljava/lang/String; = "weather24hrs_17"

.field public static final COLUMN_NAME_HUA_WEATHER24_18:Ljava/lang/String; = "weather24hrs_18"

.field public static final COLUMN_NAME_HUA_WEATHER24_19:Ljava/lang/String; = "weather24hrs_19"

.field public static final COLUMN_NAME_HUA_WEATHER24_20:Ljava/lang/String; = "weather24hrs_20"

.field public static final COLUMN_NAME_HUA_WEATHER24_21:Ljava/lang/String; = "weather24hrs_21"

.field public static final COLUMN_NAME_HUA_WEATHER24_22:Ljava/lang/String; = "weather24hrs_22"

.field public static final COLUMN_NAME_HUA_WEATHER24_23:Ljava/lang/String; = "weather24hrs_23"

.field public static final COLUMN_NAME_HUA_WEATHER24_24:Ljava/lang/String; = "weather24hrs_24"

.field public static final COLUMN_NAME_IMGICON:Ljava/lang/String; = "imgIcon"

.field public static final COLUMN_NAME_LOWDEGREE:Ljava/lang/String; = "lowDegree"

.field public static final COLUMN_NAME_NIGHT_TEMPERATURE:Ljava/lang/String; = "nightTemperature"

.field public static final COLUMN_NAME_PM25:Ljava/lang/String; = "pm2_5"

.field public static final COLUMN_NAME_RAINPROBABILITY:Ljava/lang/String; = "rainProbability"

.field public static final COLUMN_NAME_REALFREETEMPERATURE:Ljava/lang/String; = "realFeelTemp"

.field public static final COLUMN_NAME_SNOWPROBABILITY:Ljava/lang/String; = "snowProbability"

.field public static final COLUMN_NAME_SUNRISE:Ljava/lang/String; = "sunrise"

.field public static final COLUMN_NAME_SUNSET:Ljava/lang/String; = "sunset"

.field public static final COLUMN_NAME_TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final COLUMN_NAME_UPDATETIME:Ljava/lang/String; = "updateTime"

.field public static final COLUMN_NAME_UVINDEX:Ljava/lang/String; = "uvIndex"

.field public static final COLUMN_NAME_UVINDEXTEXT:Ljava/lang/String; = "uvIndexText"

.field public static final COLUMN_NAME_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final COLUMN_NAME_WEATHER_URL:Ljava/lang/String; = "weatherURL"

.field public static final COLUMN_NAME_WINDCONDITIN:Ljava/lang/String; = "windCondition"

.field public static final COLUMN_NAME_WINDSPEED:Ljava/lang/String; = "windSpeed"

.field public static final CONDITION_URI_UPDATE_FAIL:Landroid/net/Uri;

.field public static final CONDITION_URI_UPDATE_SUCCESS:Landroid/net/Uri;

.field public static final CONTENT_ID_URI_BASE:Landroid/net/Uri;

.field public static final CONTENT_ID_URI_PATTERN:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.condition"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.conditions"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "updateTime DESC"

.field private static final PATH_ACCU_CONDITIONS:Ljava/lang/String; = "/conditions"

.field private static final PATH_CONDITIONS:Ljava/lang/String; = "/huafeng_conditions"

.field private static final PATH_CONDITION_ID:Ljava/lang/String; = "/huafeng_conditions/"

.field public static final TABLE_NAME:Ljava/lang/String; = "huafeng_conditions"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 514
    const-string v0, "content://com.evenwell.providers.weather/huafeng_conditions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/watermark/Weather$Conditions;->CONTENT_URI:Landroid/net/Uri;

    .line 515
    const-string v0, "content://com.evenwell.providers.weather/conditions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/watermark/Weather$Conditions;->ACCU_CONTENT_URI:Landroid/net/Uri;

    .line 517
    const-string v0, "content://com.evenwell.providers.weather/weather_update_fail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/watermark/Weather$Conditions;->CONDITION_URI_UPDATE_FAIL:Landroid/net/Uri;

    .line 519
    const-string v0, "content://com.evenwell.providers.weather/weather_update_success"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/watermark/Weather$Conditions;->CONDITION_URI_UPDATE_SUCCESS:Landroid/net/Uri;

    .line 525
    const-string v0, "content://com.evenwell.providers.weather/huafeng_conditions/"

    .line 526
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/watermark/Weather$Conditions;->CONTENT_ID_URI_BASE:Landroid/net/Uri;

    .line 532
    const-string v0, "content://com.evenwell.providers.weather/huafeng_conditions//#"

    .line 533
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/watermark/Weather$Conditions;->CONTENT_ID_URI_PATTERN:Landroid/net/Uri;

    .line 532
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
