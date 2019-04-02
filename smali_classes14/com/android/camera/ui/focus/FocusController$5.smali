.class Lcom/android/camera/ui/focus/FocusController$5;
.super Ljava/lang/Object;
.source "FocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/focus/FocusController;

.field final synthetic val$previewArea:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusController;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/focus/FocusController;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusController$5;->this$0:Lcom/android/camera/ui/focus/FocusController;

    iput-object p2, p0, Lcom/android/camera/ui/focus/FocusController$5;->val$previewArea:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/android/camera/ui/focus/FocusController;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurePreviewDimensions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusController$5;->val$previewArea:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$5;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$300(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusController$5;->val$previewArea:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/focus/FocusRing;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 170
    return-void
.end method
