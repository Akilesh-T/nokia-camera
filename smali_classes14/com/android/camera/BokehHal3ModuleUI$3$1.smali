.class Lcom/android/camera/BokehHal3ModuleUI$3$1;
.super Ljava/lang/Object;
.source "BokehHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3ModuleUI$3;->onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BokehHal3ModuleUI$3;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3ModuleUI$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/BokehHal3ModuleUI$3;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI$3$1;->this$1:Lcom/android/camera/BokehHal3ModuleUI$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewTouched(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3$1;->this$1:Lcom/android/camera/BokehHal3ModuleUI$3;

    iget-object v0, v0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->foldAllOptions()V

    .line 230
    return-void
.end method
