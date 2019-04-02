.class Lcom/android/camera/PIPVideoModule$10;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PIPVideoModule;->onRemoteShutterPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$10;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$10;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-virtual {v0}, Lcom/android/camera/PIPVideoModule;->capture()Z

    .line 2026
    return-void
.end method
