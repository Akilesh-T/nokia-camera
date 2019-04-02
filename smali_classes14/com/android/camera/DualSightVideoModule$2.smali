.class Lcom/android/camera/DualSightVideoModule$2;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DualSightVideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$2;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$2;->this$0:Lcom/android/camera/DualSightVideoModule;

    iput-object p1, v0, Lcom/android/camera/DualSightVideoModule;->mPreviewArea:Landroid/graphics/RectF;

    .line 245
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$2;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$2;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 248
    :cond_0
    return-void
.end method
