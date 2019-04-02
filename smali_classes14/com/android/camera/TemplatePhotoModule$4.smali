.class Lcom/android/camera/TemplatePhotoModule$4;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TemplatePhotoModule;->init(Lcom/android/camera/CameraActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TemplatePhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$4;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$4;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$1000(Lcom/android/camera/TemplatePhotoModule;)V

    .line 381
    return-void
.end method
