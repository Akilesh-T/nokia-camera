.class Lcom/android/camera/DualSightPhotoModule$6;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->init(Lcom/android/camera/CameraActivity;ZZ)V
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
    .line 633
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$6;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$6;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2700(Lcom/android/camera/DualSightPhotoModule;)V

    .line 637
    return-void
.end method
