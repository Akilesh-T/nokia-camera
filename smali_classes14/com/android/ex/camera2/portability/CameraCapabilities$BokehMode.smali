.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BokehMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

.field public static final enum NORMAL:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

.field public static final enum OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 424
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    .line 425
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->NORMAL:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    .line 423
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->NORMAL:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

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
    .line 423
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 423
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    return-object v0
.end method
