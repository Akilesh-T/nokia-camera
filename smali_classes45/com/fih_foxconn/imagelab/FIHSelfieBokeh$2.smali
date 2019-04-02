.class Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$2;
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
    .line 157
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$2;->this$0:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$2;->this$0:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    iget-object v1, v0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->nativeObjSync:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    invoke-static {}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "init native obj"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$2;->this$0:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    invoke-static {v0}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->access$200(Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;)V

    .line 163
    invoke-static {}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "init native obj - done"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
