.class Lcom/android/camera/SquareModule$3;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SquareModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/camera/SquareModule$3;->this$0:Lcom/android/camera/SquareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/SquareModule$3;->this$0:Lcom/android/camera/SquareModule;

    iput-object p1, v0, Lcom/android/camera/SquareModule;->mPreviewArea:Landroid/graphics/RectF;

    .line 239
    iget-object v0, p0, Lcom/android/camera/SquareModule$3;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$400(Lcom/android/camera/SquareModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/camera/SquareModule$3;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$400(Lcom/android/camera/SquareModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 242
    :cond_0
    return-void
.end method
