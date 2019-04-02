.class Lcom/android/camera/ui/StickyBottomCaptureLayout$2;
.super Ljava/lang/Object;
.source "StickyBottomCaptureLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/StickyBottomCaptureLayout;->animateCaptureIndicatorToX(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/StickyBottomCaptureLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/StickyBottomCaptureLayout;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$2;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$2;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    invoke-static {v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->access$600(Lcom/android/camera/ui/StickyBottomCaptureLayout;)Lcom/android/camera/widget/RoundedThumbnailView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->setTranslationX(F)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout$2;->this$0:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->requestLayout()V

    .line 189
    return-void
.end method
