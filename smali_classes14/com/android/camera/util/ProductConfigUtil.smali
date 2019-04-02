.class public Lcom/android/camera/util/ProductConfigUtil;
.super Ljava/lang/Object;
.source "ProductConfigUtil.java"


# static fields
.field public static final BUILD_PRODUCT:Ljava/lang/String;

.field public static CONFIG_ARC_LOWLIGHT_VERSION:Ljava/lang/String; = null

.field public static CONFIG_BEAUTY_LEVEL_MODE:Ljava/lang/String; = null

.field public static CONFIG_HDR_AUTO_MODE_SUPPORT:Ljava/lang/String; = null

.field public static CONFIG_MANUAL_FOCUS_MODE:Ljava/lang/String; = null

.field public static CONFIG_MANUAL_METERING_MODE:Ljava/lang/String; = null

.field public static CONFIG_MTK_FB_RETURN_FROM_ORIGINAL_CB:Ljava/lang/String; = null

.field public static CONFIG_PIP_MODE:Ljava/lang/String; = null

.field private static CONFIG_PROPERTY:Ljava/util/Properties; = null

.field public static CONFIG_RESOLUTION_OPTION_MODE:Ljava/lang/String; = null

.field public static CONFIG_SLOW_MOTION_FRONT:Ljava/lang/String; = null

.field public static CONFIG_SLOW_MOTION_MODE:Ljava/lang/String; = null

.field public static CONFIG_WATER_MARK_MODE:Ljava/lang/String; = null

.field public static DEFALUT_ARC_LOWLIGHT_VERSION:Ljava/lang/String; = null

.field public static DEFALUT_BEAUTY_LEVEL_MODE:Ljava/lang/String; = null

.field public static DEFALUT_HDR_AUTO_MODE_SUPPORT:Ljava/lang/String; = null

.field public static DEFALUT_MANUAL_FOCUS_MODE:Ljava/lang/String; = null

.field public static DEFALUT_MANUAL_METERING_MODE:Ljava/lang/String; = null

.field public static DEFALUT_MTK_FB_RETURN_FROM_ORIGINAL_CB:Ljava/lang/String; = null

.field public static DEFALUT_PIP_MODE:Ljava/lang/String; = null

.field public static DEFALUT_RESOLUTION_OPTION_MODE:Ljava/lang/String; = null

.field public static DEFALUT_SLOW_MOTION_FRONT_ON:Ljava/lang/String; = null

.field public static DEFALUT_SLOW_MOTION_MODE:Ljava/lang/String; = null

.field public static DEFALUT_WATER_MARK_MODE:Ljava/lang/String; = null

.field private static IFLOAD:Z = false

.field private static final PERSIST_BUILD_PRODUCT:Ljava/lang/String; = "ro.build.product"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ProductConfigUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 13
    const-string v0, "ro.build.product"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/util/ProductConfigUtil;->IFLOAD:Z

    .line 17
    const-string v0, "setting_resolution_option_mode"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_RESOLUTION_OPTION_MODE:Ljava/lang/String;

    .line 18
    const-string v0, "setting_water_mark_mode"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_WATER_MARK_MODE:Ljava/lang/String;

    .line 19
    const-string v0, "hdr_auto_mode_support"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_HDR_AUTO_MODE_SUPPORT:Ljava/lang/String;

    .line 20
    const-string v0, "manual_metering_mode"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_MANUAL_METERING_MODE:Ljava/lang/String;

    .line 21
    const-string v0, "manual_focus_mode"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_MANUAL_FOCUS_MODE:Ljava/lang/String;

    .line 22
    const-string v0, "menu_beauty_level_mode"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_BEAUTY_LEVEL_MODE:Ljava/lang/String;

    .line 23
    const-string v0, "menu_slow_motion_mode"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_SLOW_MOTION_MODE:Ljava/lang/String;

    .line 24
    const-string v0, "menu_pip_mode"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_PIP_MODE:Ljava/lang/String;

    .line 25
    const-string v0, "arcsoft_lowlight_process_version"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_ARC_LOWLIGHT_VERSION:Ljava/lang/String;

    .line 26
    const-string v0, "mtk_fb_result_from_original_cb"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_MTK_FB_RETURN_FROM_ORIGINAL_CB:Ljava/lang/String;

    .line 27
    const-string v0, "slow_motion_front"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_SLOW_MOTION_FRONT:Ljava/lang/String;

    .line 29
    const-string v0, "dynamic"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_RESOLUTION_OPTION_MODE:Ljava/lang/String;

    .line 30
    const-string v0, "1"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_WATER_MARK_MODE:Ljava/lang/String;

    .line 31
    const-string v0, "1"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_HDR_AUTO_MODE_SUPPORT:Ljava/lang/String;

    .line 32
    const-string v0, "1"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_MANUAL_METERING_MODE:Ljava/lang/String;

    .line 33
    const-string v0, "1"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_MANUAL_FOCUS_MODE:Ljava/lang/String;

    .line 34
    const-string v0, "1"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_BEAUTY_LEVEL_MODE:Ljava/lang/String;

    .line 35
    const-string v0, "1"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_SLOW_MOTION_MODE:Ljava/lang/String;

    .line 36
    const-string v0, "1"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_PIP_MODE:Ljava/lang/String;

    .line 37
    const-string v0, "1.2"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_ARC_LOWLIGHT_VERSION:Ljava/lang/String;

    .line 38
    const-string v0, "false"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_MTK_FB_RETURN_FROM_ORIGINAL_CB:Ljava/lang/String;

    .line 39
    const-string v0, "1"

    sput-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_SLOW_MOTION_FRONT_ON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/camera/util/ProductConfigUtil;->IFLOAD:Z

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/android/camera/util/ProductConfigUtil;->getProperties()Z

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "KPI issue here, please remove this."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    sget-boolean v0, Lcom/android/camera/util/ProductConfigUtil;->IFLOAD:Z

    if-nez v0, :cond_c

    .line 90
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ProductConfigUtil get error config,return defalut config"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_RESOLUTION_OPTION_MODE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_RESOLUTION_OPTION_MODE:Ljava/lang/String;

    .line 118
    :goto_0
    return-object v0

    .line 94
    :cond_1
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_WATER_MARK_MODE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_WATER_MARK_MODE:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_2
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_MANUAL_METERING_MODE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_MANUAL_METERING_MODE:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_3
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_MANUAL_FOCUS_MODE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_MANUAL_FOCUS_MODE:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_4
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_BEAUTY_LEVEL_MODE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_BEAUTY_LEVEL_MODE:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_5
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_SLOW_MOTION_MODE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_SLOW_MOTION_MODE:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_6
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_PIP_MODE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_PIP_MODE:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_7
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_ARC_LOWLIGHT_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_ARC_LOWLIGHT_VERSION:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_8
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_HDR_AUTO_MODE_SUPPORT:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 109
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_HDR_AUTO_MODE_SUPPORT:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_9
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_MTK_FB_RETURN_FROM_ORIGINAL_CB:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 111
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_MTK_FB_RETURN_FROM_ORIGINAL_CB:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_a
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_SLOW_MOTION_FRONT:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_SLOW_MOTION_FRONT_ON:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_b
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_c
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_PROPERTY:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getProperties()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 42
    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 81
    .local v3, "props":Ljava/util/Properties;
    :goto_0
    return v4

    .line 44
    .end local v3    # "props":Ljava/util/Properties;
    :cond_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 47
    .restart local v3    # "props":Ljava/util/Properties;
    :try_start_0
    const-string v2, "c1n"

    .line 48
    .local v2, "pLowString":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v6, "ES2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    const-string v2, "es2"

    .line 71
    :cond_1
    :goto_1
    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file location:/assets/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".properties"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    const-class v5, Lcom/android/camera/util/ProductConfigUtil;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/assets/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".properties"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 73
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 74
    sput-object v3, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_PROPERTY:Ljava/util/Properties;

    .line 75
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/camera/util/ProductConfigUtil;->IFLOAD:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "pLowString":Ljava/lang/String;
    :goto_2
    sget-boolean v4, Lcom/android/camera/util/ProductConfigUtil;->IFLOAD:Z

    goto :goto_0

    .line 50
    .restart local v2    # "pLowString":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v6, "FRT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 51
    const-string v2, "frt"

    goto :goto_1

    .line 54
    :cond_3
    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v6, "C1N"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 55
    const-string v2, "c1n"

    goto :goto_1

    .line 58
    :cond_4
    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v6, "A1N"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 59
    const-string v2, "a1n"

    goto :goto_1

    .line 60
    :cond_5
    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v6, "B2N"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 61
    const-string v2, "b2n"

    goto :goto_1

    .line 63
    :cond_6
    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v6, "NE1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 64
    const-string v2, "ne1"

    goto/16 :goto_1

    .line 65
    :cond_7
    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v6, "NB1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 66
    const-string v2, "nb1"

    goto/16 :goto_1

    .line 67
    :cond_8
    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v6, "AOP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->BUILD_PRODUCT:Ljava/lang/String;

    const-string v6, "AOP_BSP"

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    :cond_9
    const-string v2, "aop"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 76
    .end local v2    # "pLowString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e1":Ljava/lang/Exception;
    sput-boolean v4, Lcom/android/camera/util/ProductConfigUtil;->IFLOAD:Z

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
