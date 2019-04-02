.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlipMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

.field public static final enum FLIP_H:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

.field public static final enum FLIP_V:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

.field public static final enum FLIP_VH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

.field public static final enum OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 393
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    .line 394
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    const-string v1, "FLIP_V"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_V:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    .line 395
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    const-string v1, "FLIP_H"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_H:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    .line 396
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    const-string v1, "FLIP_VH"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_VH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    .line 392
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_V:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_H:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_VH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

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
    .line 392
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 392
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    return-object v0
.end method
