.class Lcom/android/camera/DualSightPhotoModuleUI$1;
.super Ljava/lang/Object;
.source "DualSightPhotoModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DualSightPhotoModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI$1;->this$0:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onZoomIconClick()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onZoomStart()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 151
    return-void
.end method
