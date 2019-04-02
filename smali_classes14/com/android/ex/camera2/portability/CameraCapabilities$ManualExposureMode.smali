.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManualExposureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

.field public static final enum EXP_TIME_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

.field public static final enum ISO_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

.field public static final enum OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

.field public static final enum USER_SETTING:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .line 375
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    const-string v1, "EXP_TIME_PRIORITY"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->EXP_TIME_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .line 376
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    const-string v1, "ISO_PRIORITY"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->ISO_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .line 377
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    const-string v1, "USER_SETTING"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->USER_SETTING:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .line 373
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->EXP_TIME_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->ISO_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->USER_SETTING:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 373
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    return-object v0
.end method
