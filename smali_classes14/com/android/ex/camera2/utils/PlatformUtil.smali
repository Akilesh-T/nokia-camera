.class public Lcom/android/ex/camera2/utils/PlatformUtil;
.super Ljava/lang/Object;
.source "PlatformUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    }
.end annotation


# static fields
.field private static final PLATFORM:Ljava/lang/String; = "ro.board.platform"

.field private static final PREFIX_MTK:[Ljava/lang/String;

.field private static final PREFIX_QUALCOMM:[Ljava/lang/String;

.field private static final PREFIX_SPREADTRUM:[Ljava/lang/String;

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static final UNKNOW_PLATFORM:Ljava/lang/String; = "unknow"

.field private static final USE_LIGHT_SOLUTION:Z

.field private static sPlatform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "PlatformUtil"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/utils/PlatformUtil;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MSM"

    aput-object v1, v0, v3

    const-string v1, "QSD"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "APQ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SDM"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/camera2/utils/PlatformUtil;->PREFIX_QUALCOMM:[Ljava/lang/String;

    .line 13
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "MT"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/ex/camera2/utils/PlatformUtil;->PREFIX_MTK:[Ljava/lang/String;

    .line 14
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SC"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/ex/camera2/utils/PlatformUtil;->PREFIX_SPREADTRUM:[Ljava/lang/String;

    .line 19
    const-string v0, "persist.camera.light.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/ex/camera2/utils/PlatformUtil;->USE_LIGHT_SOLUTION:Z

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/camera2/utils/PlatformUtil;->sPlatform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 28
    sget-object v4, Lcom/android/ex/camera2/utils/PlatformUtil;->sPlatform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-eqz v4, :cond_0

    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil;->sPlatform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    .line 58
    .local v1, "platform":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 29
    .end local v1    # "platform":Ljava/lang/String;
    :cond_0
    const-string v4, "ro.board.platform"

    const-string v5, "unknow"

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .restart local v1    # "platform":Ljava/lang/String;
    sget-object v4, Lcom/android/ex/camera2/utils/PlatformUtil;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PLATFORM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    if-eqz v1, :cond_6

    .line 33
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 34
    sget-object v5, Lcom/android/ex/camera2/utils/PlatformUtil;->PREFIX_QUALCOMM:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v2, v5, v4

    .line 35
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 36
    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sput-object v3, Lcom/android/ex/camera2/utils/PlatformUtil;->sPlatform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    .line 37
    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    goto :goto_0

    .line 34
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 40
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/android/ex/camera2/utils/PlatformUtil;->PREFIX_MTK:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_2
    if-ge v4, v6, :cond_4

    aget-object v2, v5, v4

    .line 41
    .restart local v2    # "prefix":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 42
    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sput-object v3, Lcom/android/ex/camera2/utils/PlatformUtil;->sPlatform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    .line 43
    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    goto :goto_0

    .line 40
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 46
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/android/ex/camera2/utils/PlatformUtil;->PREFIX_SPREADTRUM:[Ljava/lang/String;

    array-length v5, v4

    :goto_3
    if-ge v3, v5, :cond_6

    aget-object v2, v4, v3

    .line 47
    .restart local v2    # "prefix":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 48
    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sput-object v3, Lcom/android/ex/camera2/utils/PlatformUtil;->sPlatform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    .line 49
    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 52
    .end local v2    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->UNKNOW:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sput-object v3, Lcom/android/ex/camera2/utils/PlatformUtil;->sPlatform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    .line 54
    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->UNKNOW:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->UNKNOW:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sput-object v3, Lcom/android/ex/camera2/utils/PlatformUtil;->sPlatform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    .line 58
    sget-object v3, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->UNKNOW:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    goto :goto_0
.end method

.method public static isMtkPlatform()Z
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRawCaptureRequired()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/ex/camera2/utils/PlatformUtil;->USE_LIGHT_SOLUTION:Z

    return v0
.end method
