.class Lcom/android/camera/ManualModule$12;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualModule;->onRemoteShutterPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 2633
    iput-object p1, p0, Lcom/android/camera/ManualModule$12;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/android/camera/ManualModule$12;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3800(Lcom/android/camera/ManualModule;)V

    .line 2637
    return-void
.end method
