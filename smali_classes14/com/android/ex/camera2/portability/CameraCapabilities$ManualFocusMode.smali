.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManualFocusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

.field public static final enum DIOPTER_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

.field public static final enum OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

.field public static final enum SCALE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 365
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    .line 366
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    const-string v1, "SCALE_MODE"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->SCALE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    .line 367
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    const-string v1, "DIOPTER_MODE"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->DIOPTER_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    .line 364
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->SCALE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->DIOPTER_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

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
    .line 364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 364
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    return-object v0
.end method
