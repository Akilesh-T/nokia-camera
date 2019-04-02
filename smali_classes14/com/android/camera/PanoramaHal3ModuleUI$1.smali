.class Lcom/android/camera/PanoramaHal3ModuleUI$1;
.super Ljava/lang/Object;
.source "PanoramaHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaHal3ModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaHal3ModuleUI;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3ModuleUI$1;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onZoomIconClick()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onZoomStart()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 94
    return-void
.end method
