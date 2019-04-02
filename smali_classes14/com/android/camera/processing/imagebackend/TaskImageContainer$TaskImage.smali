.class public Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
.super Ljava/lang/Object;
.source "TaskImageContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskImage"
.end annotation


# static fields
.field public static final EXTRA_USER_DEFINED_FORMAT_ARGB_8888:I = -0x1


# instance fields
.field public final cropApplied:Landroid/graphics/Rect;

.field public final format:I

.field public final height:I

.field public final orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field public final width:I


# direct methods
.method constructor <init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "anOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p2, "aWidth"    # I
    .param p3, "aHeight"    # I
    .param p4, "aFormat"    # I
    .param p5, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 81
    iput p3, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    .line 82
    iput p2, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    .line 83
    iput p4, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->format:I

    .line 84
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->cropApplied:Landroid/graphics/Rect;

    .line 85
    return-void
.end method
