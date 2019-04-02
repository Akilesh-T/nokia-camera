.class Lcom/android/camera/DualSightVideoModule$16$8$2;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16$8;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/DualSightVideoModule$16$8;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule$16$8;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/DualSightVideoModule$16$8;

    .prologue
    .line 2170
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-result-object v0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$5900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewStatusListener;->onPreviewFlipped()V

    .line 2204
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$5900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/android/camera/ui/PreviewStatusListener;->onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V

    .line 2189
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$5900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 2209
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$5900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$5900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 2214
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$5900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 2224
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$5900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewStatusListener;->shouldAutoAdjustTransformMatrixOnLayout()Z

    move-result v0

    return v0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 2198
    const/4 v0, 0x1

    return v0
.end method
