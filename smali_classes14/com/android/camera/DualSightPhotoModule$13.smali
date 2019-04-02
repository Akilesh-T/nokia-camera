.class Lcom/android/camera/DualSightPhotoModule$13;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$13;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$13;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4100(Lcom/android/camera/DualSightPhotoModule;)V

    .line 1789
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$13;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0, p1}, Lcom/android/camera/DualSightPhotoModule;->access$4000(Lcom/android/camera/DualSightPhotoModule;I)V

    .line 1784
    return-void
.end method
