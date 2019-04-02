.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BokehMPOMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

.field public static final enum NORMAL:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

.field public static final enum OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 432
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    .line 433
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;->NORMAL:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    .line 431
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;->NORMAL:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

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
    .line 431
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 431
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    return-object v0
.end method
