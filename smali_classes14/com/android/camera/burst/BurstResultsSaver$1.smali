.class final Lcom/android/camera/burst/BurstResultsSaver$1;
.super Landroid/os/AsyncTask;
.source "BurstResultsSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstResultsSaver;->saveBurstResultsInBackground(Lcom/android/camera/burst/BurstResult;Lcom/android/camera/session/StackSaver;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$burstResult:Lcom/android/camera/burst/BurstResult;

.field final synthetic val$onCompletetionCallback:Ljava/lang/Runnable;

.field final synthetic val$stackSaver:Lcom/android/camera/session/StackSaver;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstResult;Lcom/android/camera/session/StackSaver;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/burst/BurstResultsSaver$1;->val$burstResult:Lcom/android/camera/burst/BurstResult;

    iput-object p2, p0, Lcom/android/camera/burst/BurstResultsSaver$1;->val$stackSaver:Lcom/android/camera/session/StackSaver;

    iput-object p3, p0, Lcom/android/camera/burst/BurstResultsSaver$1;->val$onCompletetionCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/burst/BurstResultsSaver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 103
    new-instance v1, Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;-><init>(J)V

    .line 105
    .local v1, "timestampGen":Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;
    iget-object v2, p0, Lcom/android/camera/burst/BurstResultsSaver$1;->val$burstResult:Lcom/android/camera/burst/BurstResult;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstResult;->getTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, "artifactType":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/camera/burst/BurstResultsSaver$1;->publishProgress([Ljava/lang/Object;)V

    .line 107
    iget-object v3, p0, Lcom/android/camera/burst/BurstResultsSaver$1;->val$stackSaver:Lcom/android/camera/session/StackSaver;

    iget-object v4, p0, Lcom/android/camera/burst/BurstResultsSaver$1;->val$burstResult:Lcom/android/camera/burst/BurstResult;

    invoke-static {v3, v4, v0, v1}, Lcom/android/camera/burst/BurstResultsSaver;->access$000(Lcom/android/camera/session/StackSaver;Lcom/android/camera/burst/BurstResult;Ljava/lang/String;Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;)V

    goto :goto_0

    .line 110
    .end local v0    # "artifactType":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/burst/BurstResultsSaver$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsSaver$1;->val$onCompletetionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 116
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/burst/BurstResultsSaver$1;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 1
    .param p1, "artifactTypes"    # [Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsSaver$1;->val$burstResult:Lcom/android/camera/burst/BurstResult;

    invoke-static {p1, v0}, Lcom/android/camera/burst/BurstResultsSaver;->access$100([Ljava/lang/String;Lcom/android/camera/burst/BurstResult;)V

    .line 121
    return-void
.end method
