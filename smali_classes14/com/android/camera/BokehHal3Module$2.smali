.class Lcom/android/camera/BokehHal3Module$2;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehHal3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$2;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$2;->this$0:Lcom/android/camera/BokehHal3Module;

    iput-object p1, v0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 239
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$2;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$400(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$2;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$400(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 242
    :cond_0
    return-void
.end method
