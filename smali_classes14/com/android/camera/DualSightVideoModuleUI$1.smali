.class Lcom/android/camera/DualSightVideoModuleUI$1;
.super Ljava/lang/Object;
.source "DualSightVideoModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DualSightVideoModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightVideoModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModuleUI$1;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onZoomIconClick()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onZoomStart()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 111
    return-void
.end method
