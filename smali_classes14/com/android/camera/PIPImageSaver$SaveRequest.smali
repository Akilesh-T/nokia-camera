.class Lcom/android/camera/PIPImageSaver$SaveRequest;
.super Ljava/lang/Object;
.source "PIPImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveRequest"
.end annotation


# instance fields
.field callback:Lcom/android/camera/PIPImageSaver$PIPImageSavedCallback;

.field cameraServices:Lcom/android/camera/app/CameraServices;

.field captureStartTime:J

.field coordinate:Landroid/graphics/RectF;

.field deviceOrientation:I

.field frontCameraMirror:Z

.field is18x9Layout:Z

.field location:Landroid/location/Location;

.field mainImage:[B

.field mediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field mode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

.field name:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

.field orientation:I

.field subImage:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PIPImageSaver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PIPImageSaver$1;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/PIPImageSaver$SaveRequest;-><init>()V

    return-void
.end method
