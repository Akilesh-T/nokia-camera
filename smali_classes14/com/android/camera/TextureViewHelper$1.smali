.class Lcom/android/camera/TextureViewHelper$1;
.super Ljava/lang/Object;
.source "TextureViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TextureViewHelper;->onPreviewAreaChanged(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TextureViewHelper;

.field final synthetic val$listeners:Ljava/util/List;

.field final synthetic val$previewArea:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/android/camera/TextureViewHelper;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TextureViewHelper;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/camera/TextureViewHelper$1;->this$0:Lcom/android/camera/TextureViewHelper;

    iput-object p2, p0, Lcom/android/camera/TextureViewHelper$1;->val$listeners:Ljava/util/List;

    iput-object p3, p0, Lcom/android/camera/TextureViewHelper$1;->val$previewArea:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/camera/TextureViewHelper$1;->val$listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 390
    .local v0, "listener":Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
    iget-object v2, p0, Lcom/android/camera/TextureViewHelper$1;->val$previewArea:Landroid/graphics/RectF;

    invoke-interface {v0, v2}, Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 392
    .end local v0    # "listener":Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
    :cond_0
    return-void
.end method
