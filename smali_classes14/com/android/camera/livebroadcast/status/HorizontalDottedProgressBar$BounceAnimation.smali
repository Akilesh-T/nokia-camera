.class Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;
.super Landroid/view/animation/Animation;
.source "HorizontalDottedProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BounceAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;


# direct methods
.method private constructor <init>(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;->this$0:Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;
    .param p2, "x1"    # Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;-><init>(Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar$BounceAnimation;->this$0:Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/status/HorizontalDottedProgressBar;->invalidate()V

    .line 111
    return-void
.end method
