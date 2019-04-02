.class public final enum Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;
.super Ljava/lang/Enum;
.source "ImageConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/ImageConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageTaskFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum BLOCK_UNTIL_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum COMPRESS_TO_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum CONVERT_TO_BITMAP:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum CONVERT_TO_JPEG_DATA:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum CONVERT_TO_YUV_DATA:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum CREATE_EARLY_FILMSTRIP_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum CREATE_IMAGE_INFO:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum CREATE_POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum IS_BURST_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum IS_FIRST_BURST_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum IS_PANO_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

.field public static final enum IS_RAW_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "CREATE_EARLY_FILMSTRIP_PREVIEW"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_EARLY_FILMSTRIP_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 63
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "CREATE_POST_PROCESS_IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 64
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "CREATE_IMAGE_INFO"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_IMAGE_INFO:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 65
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "COMPRESS_TO_JPEG_AND_WRITE_TO_DISK"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->COMPRESS_TO_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 66
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "CONVERT_TO_YUV_DATA"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_YUV_DATA:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 67
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "CONVERT_TO_JPEG_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_JPEG_DATA:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 68
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "CONVERT_TO_BITMAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_BITMAP:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 69
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "CONVERT_TO_RGB_PREVIEW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 70
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "IS_BURST_IMAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_BURST_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 71
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "IS_PANO_IMAGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_PANO_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 72
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "IS_RAW_IMAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_RAW_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 73
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "IS_FIRST_BURST_IMAGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_FIRST_BURST_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 74
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "BLOCK_UNTIL_ALL_TASKS_RELEASE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->BLOCK_UNTIL_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 75
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    const-string v1, "CLOSE_ON_ALL_TASKS_RELEASE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 61
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_EARLY_FILMSTRIP_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_IMAGE_INFO:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->COMPRESS_TO_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_YUV_DATA:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_JPEG_DATA:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_BITMAP:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_BURST_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_PANO_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_RAW_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_FIRST_BURST_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->BLOCK_UNTIL_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->$VALUES:[Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->$VALUES:[Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-virtual {v0}, [Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    return-object v0
.end method
