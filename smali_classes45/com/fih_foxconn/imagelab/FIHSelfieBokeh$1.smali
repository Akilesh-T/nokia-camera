.class Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$1;
.super Ljava/lang/Object;
.source "FIHSelfieBokeh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;


# direct methods
.method constructor <init>(Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$1;->this$0:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$1;->this$0:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    iget-object v2, v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->modelSync:Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_0
    new-instance v3, Lcom/fih_foxconn/imagelab/PSModelBuilder;

    invoke-static {}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-direct {v3, v1}, Lcom/fih_foxconn/imagelab/PSModelBuilder;-><init>(Landroid/app/Application;)V

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$1;->this$0:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    iget-object v1, v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPlatform:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 146
    invoke-virtual {v3, v1}, Lcom/fih_foxconn/imagelab/PSModelBuilder;->setPlatform(Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;)Lcom/fih_foxconn/imagelab/PSModelBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$1;->this$0:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    iget-object v3, v3, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mRuntime:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 147
    invoke-virtual {v1, v3}, Lcom/fih_foxconn/imagelab/PSModelBuilder;->setRuntime(Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;)Lcom/fih_foxconn/imagelab/PSModelBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$1;->this$0:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    iget-object v3, v3, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mModelType:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 148
    invoke-virtual {v1, v3}, Lcom/fih_foxconn/imagelab/PSModelBuilder;->setModelType(Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;)Lcom/fih_foxconn/imagelab/PSModelBuilder;

    move-result-object v0

    .line 149
    .local v0, "builder":Lcom/fih_foxconn/imagelab/PSModelBuilder;
    invoke-static {}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "build model"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$1;->this$0:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/PSModelBuilder;->build()Lcom/fih_foxconn/imagelab/AbstractPSModel;

    move-result-object v3

    iput-object v3, v1, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->mPSModel:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .line 151
    invoke-static {}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "build model - done"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    monitor-exit v2

    .line 153
    return-void

    .line 152
    .end local v0    # "builder":Lcom/fih_foxconn/imagelab/PSModelBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
