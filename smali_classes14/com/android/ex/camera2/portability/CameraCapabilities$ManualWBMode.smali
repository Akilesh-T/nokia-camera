.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManualWBMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

.field public static final enum COLOR_TEMPERATURE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

.field public static final enum OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

.field public static final enum RBGB_GAINS:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 384
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    .line 385
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    const-string v1, "COLOR_TEMPERATURE"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->COLOR_TEMPERATURE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    .line 386
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    const-string v1, "RBGB_GAINS"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->RBGB_GAINS:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    .line 383
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->COLOR_TEMPERATURE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->RBGB_GAINS:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

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
    .line 383
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 383
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    return-object v0
.end method
