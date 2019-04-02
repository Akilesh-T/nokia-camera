.class public Lcom/android/camera/ui/watermark/WeatherUtil;
.super Ljava/lang/Object;
.source "WeatherUtil.java"


# static fields
.field public static final ACTION_AUTO_SEARCH_CURRENT_CITY:Ljava/lang/String; = "com.fihtdc.action.AUTO_SEARCH_CURRENT_CITY"

.field public static final ACTION_UPDATE_STATUS:Ljava/lang/String; = "com.fihtdc.action.UPDATE_STATUS"

.field public static final KEY_UPDATE_STATUS:Ljava/lang/String; = "status"

.field public static final SELECTION_CITY_ID:Ljava/lang/String; = "cityId=\'1\'"

.field public static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.evenwell.weatherservice.service.UpdateService"

.field public static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.evenwell.weatherservice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fahrenheitToCelsius(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "tFahrenheit"    # Ljava/lang/String;

    .prologue
    .line 66
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 68
    .local v0, "fnum":F
    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x42000000    # 32.0f

    sub-float v3, v0, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 71
    .end local v0    # "fnum":F
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "--"

    goto :goto_0
.end method

.method public static getConditionCursor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 19
    sget-object v2, Lcom/android/camera/ui/watermark/Weather;->WEATHERVIEW_HUA_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDegreeNum(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "degreeStr"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v3, "degreeType"

    invoke-static {p0, v3}, Lcom/android/camera/ui/watermark/WeatherUtil;->getSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 25
    const-string v2, "true"

    .line 27
    :cond_0
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    if-eqz p1, :cond_1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 29
    invoke-static {p1}, Lcom/android/camera/ui/watermark/WeatherUtil;->fahrenheitToCelsius(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "astr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/ui/watermark/WeatherUtil;->getIntValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .end local v0    # "astr":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 33
    :cond_1
    const-string v1, "--"

    goto :goto_0

    .line 37
    :cond_2
    if-eqz p1, :cond_3

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 38
    invoke-static {p1}, Lcom/android/camera/ui/watermark/WeatherUtil;->getIntValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "bstr":Ljava/lang/String;
    goto :goto_0

    .line 41
    .end local v1    # "bstr":Ljava/lang/String;
    :cond_3
    const-string v1, "--"

    goto :goto_0
.end method

.method public static getCurrentDegreeSymbol(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 91
    const-string v1, "degreeType"

    .line 92
    invoke-static {p0, v1}, Lcom/android/camera/ui/watermark/WeatherUtil;->getSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 94
    const-string v0, "true"

    .line 96
    :cond_0
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string v1, "C"

    .line 99
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "F"

    goto :goto_0
.end method

.method public static getIntValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "string":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 79
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 80
    .local v0, "fnum":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 81
    .local v1, "num":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    .end local v0    # "fnum":F
    .end local v1    # "num":I
    :cond_0
    :goto_0
    return-object v2

    .line 82
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v6, 0x0

    .line 49
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 51
    .local v7, "value":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/android/camera/ui/watermark/Weather$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/camera/ui/watermark/Weather;->SETTING_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settingKey=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    if-eqz v6, :cond_0

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "settingValue"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 58
    :cond_0
    if-eqz v6, :cond_1

    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_1
    return-object v7

    .line 58
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static vaildateDataLink(Landroid/content/Context;)Z
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 104
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 106
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
