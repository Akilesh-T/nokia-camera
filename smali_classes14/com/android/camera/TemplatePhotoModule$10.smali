.class Lcom/android/camera/TemplatePhotoModule$10;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TemplatePhotoModule;->onRemoteShutterPress()V
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
    .line 2145
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$10;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$10;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$4600(Lcom/android/camera/TemplatePhotoModule;)V

    .line 2149
    return-void
.end method
