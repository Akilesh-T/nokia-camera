.class public final enum Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;
.super Ljava/lang/Enum;
.source "ImageReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReprocessTaskFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

.field public static final enum COMPRESS_TO_BURST_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

.field public static final enum COMPRESS_TO_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

.field public static final enum COMPRESS_TO_RAW:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    const-string v1, "COMPRESS_TO_BURST_JEPG"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_BURST_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    .line 25
    new-instance v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    const-string v1, "COMPRESS_TO_JEPG"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    .line 26
    new-instance v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    const-string v1, "COMPRESS_TO_RAW"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_RAW:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    sget-object v1, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_BURST_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_RAW:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->$VALUES:[Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->$VALUES:[Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    return-object v0
.end method
