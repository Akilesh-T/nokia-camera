.class Lcom/android/ex/camera2/utils/GLDofRenderer$1;
.super Ljava/lang/Object;
.source "GLDofRenderer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/utils/GLDofRenderer;->getResultBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/utils/GLDofRenderer;

.field final synthetic val$final_depth:Landroid/graphics/Bitmap;

.field final synthetic val$final_image:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/utils/GLDofRenderer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/utils/GLDofRenderer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->this$0:Lcom/android/ex/camera2/utils/GLDofRenderer;

    iput-object p2, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->val$final_image:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->val$final_depth:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 64
    iget-object v1, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->this$0:Lcom/android/ex/camera2/utils/GLDofRenderer;

    invoke-static {v1}, Lcom/android/ex/camera2/utils/GLDofRenderer;->access$000(Lcom/android/ex/camera2/utils/GLDofRenderer;)Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->getBokehRadius()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->val$final_image:Landroid/graphics/Bitmap;

    .line 71
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->this$0:Lcom/android/ex/camera2/utils/GLDofRenderer;

    invoke-static {v1}, Lcom/android/ex/camera2/utils/GLDofRenderer;->access$000(Lcom/android/ex/camera2/utils/GLDofRenderer;)Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->val$final_image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->val$final_image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, -0x1

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->resize(IIFI)V

    .line 70
    iget-object v1, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->this$0:Lcom/android/ex/camera2/utils/GLDofRenderer;

    invoke-static {v1}, Lcom/android/ex/camera2/utils/GLDofRenderer;->access$000(Lcom/android/ex/camera2/utils/GLDofRenderer;)Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->val$final_image:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->val$final_depth:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->getResult(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/ex/camera2/utils/GLDofRenderer$1;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
