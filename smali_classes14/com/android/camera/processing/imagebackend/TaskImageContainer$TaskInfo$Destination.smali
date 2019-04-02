.class public final enum Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;
.super Ljava/lang/Enum;
.source "TaskImageContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Destination"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

.field public static final enum CONVERT_JPEG_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

.field public static final enum CONVERT_YUV_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

.field public static final enum FAST_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

.field public static final enum FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

.field public static final enum INTERMEDIATE_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

.field public static final enum POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

.field public static final enum RAW_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    const-string v1, "FAST_THUMBNAIL"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .line 116
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    const-string v1, "INTERMEDIATE_THUMBNAIL"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->INTERMEDIATE_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .line 117
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    const-string v1, "CONVERT_YUV_IMAGE"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->CONVERT_YUV_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .line 118
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    const-string v1, "CONVERT_JPEG_IMAGE"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->CONVERT_JPEG_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .line 119
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    const-string v1, "POST_PROCESS_IMAGE"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .line 120
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    const-string v1, "RAW_IMAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->RAW_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .line 121
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    const-string v1, "FINAL_IMAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .line 114
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->INTERMEDIATE_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->CONVERT_YUV_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->CONVERT_JPEG_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->RAW_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->$VALUES:[Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->$VALUES:[Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    invoke-virtual {v0}, [Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    return-object v0
.end method
