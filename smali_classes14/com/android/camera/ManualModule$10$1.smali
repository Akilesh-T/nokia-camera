.class Lcom/android/camera/ManualModule$10$1;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualModule$10;->onPreviewStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ManualModule$10;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ManualModule$10;

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/android/camera/ManualModule$10$1;->this$1:Lcom/android/camera/ManualModule$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/camera/ManualModule$10$1;->this$1:Lcom/android/camera/ManualModule$10;

    iget-object v0, v0, Lcom/android/camera/ManualModule$10;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3400(Lcom/android/camera/ManualModule;)V

    .line 1938
    return-void
.end method
