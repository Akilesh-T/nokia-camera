.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HFR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

.field public static final enum HFR_120:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

.field public static final enum HFR_60:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

.field public static final enum HFR_90:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

.field public static final enum HFR_OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    const-string v1, "HFR_OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .line 356
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    const-string v1, "HFR_60"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_60:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .line 357
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    const-string v1, "HFR_90"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_90:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .line 358
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    const-string v1, "HFR_120"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_120:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .line 354
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_60:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_90:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_120:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

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
    .line 354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 354
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    return-object v0
.end method
