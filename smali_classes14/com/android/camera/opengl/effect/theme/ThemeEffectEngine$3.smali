.class Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;
.super Ljava/lang/Object;
.source "ThemeEffectEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->updateStyleInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$400(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$500(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$600(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$700(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$500(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v4}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$600(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v5}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$800(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$808(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)I

    .line 200
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$800(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v4}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$1400(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$702(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;Z)Z

    .line 202
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$802(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;I)I

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$1500(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x21

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_2
    monitor-exit v3

    .line 207
    return-void

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    iget-object v4, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v4}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$900(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    iget-object v6, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$800(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$1000(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$1100(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$1200(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$1300(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 190
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$500(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$500(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$800(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)I

    move-result v2

    if-lez v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$600(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$600(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    const/16 v4, 0x21

    invoke-virtual {v2, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
