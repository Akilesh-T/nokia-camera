.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ISO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

.field public static final enum ISO_100:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

.field public static final enum ISO_1600:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

.field public static final enum ISO_200:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

.field public static final enum ISO_3200:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

.field public static final enum ISO_400:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

.field public static final enum ISO_50:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

.field public static final enum ISO_800:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

.field public static final enum ISO_AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

.field public static final enum ISO_HJR:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

.field public static final enum ISO_MANUAL:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    const-string v1, "ISO_AUTO"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 340
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    const-string v1, "ISO_HJR"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_HJR:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 341
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    const-string v1, "ISO_50"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_50:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 342
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    const-string v1, "ISO_100"

    invoke-direct {v0, v1, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_100:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 343
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    const-string v1, "ISO_200"

    invoke-direct {v0, v1, v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_200:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 344
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    const-string v1, "ISO_400"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_400:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 345
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    const-string v1, "ISO_800"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_800:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 346
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    const-string v1, "ISO_1600"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_1600:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 347
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    const-string v1, "ISO_3200"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_3200:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 348
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    const-string v1, "ISO_MANUAL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_MANUAL:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 338
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_HJR:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_50:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_100:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_200:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_400:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_800:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_1600:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_3200:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_MANUAL:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

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
    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 338
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    return-object v0
.end method
