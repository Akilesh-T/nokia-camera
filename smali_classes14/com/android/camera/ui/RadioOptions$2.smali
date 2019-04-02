.class Lcom/android/camera/ui/RadioOptions$2;
.super Ljava/lang/Object;
.source "RadioOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/RadioOptions;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RadioOptions;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RadioOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/RadioOptions;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/ui/RadioOptions$2;->this$0:Lcom/android/camera/ui/RadioOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/RadioOptions$2;->this$0:Lcom/android/camera/ui/RadioOptions;

    invoke-virtual {v0}, Lcom/android/camera/ui/RadioOptions;->updateListeners()V

    .line 84
    return-void
.end method
