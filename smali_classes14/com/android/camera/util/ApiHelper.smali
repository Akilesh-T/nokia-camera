.class public Lcom/android/camera/util/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# static fields
.field public static final AT_LEAST_16:Z

.field public static final HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

.field public static final HAS_APP_GALLERY:Z

.field public static final HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

.field public static final HAS_CAMERA_2_API:Z

.field public static final HAS_CAMERA_HDR:Z

.field public static final HAS_CAMERA_HDR_PLUS:Z

.field public static final HAS_DISPLAY_LISTENER:Z

.field public static final HAS_HIDEYBARS:Z

.field public static final HAS_MEDIA_ACTION_SOUND:Z

.field public static final HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

.field public static final HAS_ORIENTATION_LOCK:Z

.field public static final HAS_RENDERSCRIPT:Z

.field public static final HAS_ROBOTO_MEDIUM_FONT:Z

.field public static final HAS_ROTATION_ANIMATION:Z

.field public static final HAS_SET_BEAM_PUSH_URIS:Z

.field public static final HAS_SURFACE_TEXTURE_RECORDING:Z

.field public static final HDR_PLUS_CAN_USE_ARBITRARY_ASPECT_RATIOS:Z

.field public static final IS_NEXUS_4:Z

.field public static final IS_NEXUS_5:Z

.field public static final IS_NEXUS_6:Z

.field public static final IS_NEXUS_9:Z

.field private static final X86ABI:Ljava/lang/String; = "x86"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0x11

    const/16 v4, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->AT_LEAST_16:Z

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_APP_GALLERY:Z

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_MEDIA_ACTION_SOUND:Z

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_8

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_9

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_a

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_ROBOTO_MEDIUM_FONT:Z

    .line 47
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isKitKatOrHigher()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_CAMERA_HDR_PLUS:Z

    .line 48
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isKitKatMR2OrHigher()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HDR_PLUS_CAN_USE_ARBITRARY_ASPECT_RATIOS:Z

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_b

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_CAMERA_HDR:Z

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_c

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_d

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_ORIENTATION_LOCK:Z

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_e

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_ROTATION_ANIMATION:Z

    .line 59
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isKitKatOrHigher()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_HIDEYBARS:Z

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ne v0, v3, :cond_0

    const-string v0, "x86"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_0
    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_RENDERSCRIPT:Z

    .line 65
    const-string v0, "mako"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    .line 66
    const-string v0, "LGE"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "hammerhead"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    .line 68
    const-string v0, "motorola"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "shamu"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_6:Z

    .line 70
    const-string v0, "htc"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "flounder"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "flounder_lte"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_1
    :goto_10
    sput-boolean v1, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_9:Z

    .line 74
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_CAMERA_2_API:Z

    return-void

    :cond_2
    move v0, v2

    .line 27
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 29
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 32
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 34
    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 36
    goto/16 :goto_4

    :cond_7
    move v0, v2

    .line 38
    goto/16 :goto_5

    :cond_8
    move v0, v2

    .line 40
    goto/16 :goto_6

    :cond_9
    move v0, v2

    .line 42
    goto/16 :goto_7

    :cond_a
    move v0, v2

    .line 44
    goto/16 :goto_8

    :cond_b
    move v0, v2

    .line 49
    goto/16 :goto_9

    :cond_c
    move v0, v2

    .line 51
    goto/16 :goto_a

    :cond_d
    move v0, v2

    .line 54
    goto/16 :goto_b

    :cond_e
    move v0, v2

    .line 56
    goto/16 :goto_c

    :cond_f
    move v0, v2

    .line 63
    goto/16 :goto_d

    :cond_10
    move v0, v2

    .line 67
    goto :goto_e

    :cond_11
    move v0, v2

    .line 69
    goto :goto_f

    :cond_12
    move v1, v2

    .line 72
    goto :goto_10
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p3, "defaultVal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 80
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 82
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local p3    # "defaultVal":I
    :goto_0
    return p3

    .line 81
    .restart local p3    # "defaultVal":I
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isKitKatMR2OrHigher()Z
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isKitKatOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "4.4.4"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4.4.3"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKitKatOrHigher()Z
    .locals 2

    .prologue
    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const-string v0, "KeyLimePie"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLMr1OrHigher()Z
    .locals 2

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLOrHigher()Z
    .locals 2

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const-string v0, "L"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOLLIPOP"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLollipop()Z
    .locals 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLorLMr1()Z
    .locals 2

    .prologue
    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMOrHigher()Z
    .locals 2

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const-string v0, "MNC"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
