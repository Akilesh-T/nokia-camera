.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeteringMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

.field public static final enum CENTER_WEIGHTED:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

.field public static final enum CENTER_WEIGHTED_ADV:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

.field public static final enum FRAME_AVERAGE:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

.field public static final enum SPOT_METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

.field public static final enum SPOT_METERING_ADV:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 403
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    const-string v1, "FRAME_AVERAGE"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->FRAME_AVERAGE:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 404
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    const-string v1, "CENTER_WEIGHTED"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->CENTER_WEIGHTED:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 405
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    const-string v1, "SPOT_METERING"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->SPOT_METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 406
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    const-string v1, "SPOT_METERING_ADV"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->SPOT_METERING_ADV:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 407
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    const-string v1, "CENTER_WEIGHTED_ADV"

    invoke-direct {v0, v1, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->CENTER_WEIGHTED_ADV:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 402
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->FRAME_AVERAGE:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->CENTER_WEIGHTED:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->SPOT_METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->SPOT_METERING_ADV:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->CENTER_WEIGHTED_ADV:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

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
    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 402
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1

    .prologue
    .line 402
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    return-object v0
.end method
