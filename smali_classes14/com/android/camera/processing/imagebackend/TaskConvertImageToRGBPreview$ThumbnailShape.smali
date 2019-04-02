.class public final enum Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;
.super Ljava/lang/Enum;
.source "TaskConvertImageToRGBPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThumbnailShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

.field public static final enum DEBUG_SQUARE_ASPECT_CIRCULAR_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

.field public static final enum MAINTAIN_ASPECT_NO_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

.field public static final enum SQUARE_ASPECT_CIRCULAR_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

.field public static final enum SQUARE_ASPECT_NO_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    const-string v1, "DEBUG_SQUARE_ASPECT_CIRCULAR_INSET"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->DEBUG_SQUARE_ASPECT_CIRCULAR_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    .line 57
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    const-string v1, "SQUARE_ASPECT_CIRCULAR_INSET"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->SQUARE_ASPECT_CIRCULAR_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    .line 58
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    const-string v1, "SQUARE_ASPECT_NO_INSET"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->SQUARE_ASPECT_NO_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    .line 59
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    const-string v1, "MAINTAIN_ASPECT_NO_INSET"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->MAINTAIN_ASPECT_NO_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->DEBUG_SQUARE_ASPECT_CIRCULAR_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->SQUARE_ASPECT_CIRCULAR_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->SQUARE_ASPECT_NO_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->MAINTAIN_ASPECT_NO_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->$VALUES:[Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->$VALUES:[Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    invoke-virtual {v0}, [Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    return-object v0
.end method
