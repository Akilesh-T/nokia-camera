.class Lcom/android/camera/CaptureModule$3;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    iput-object p1, v0, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    .line 265
    iget-object v0, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$1000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$1000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 268
    :cond_0
    return-void
.end method
