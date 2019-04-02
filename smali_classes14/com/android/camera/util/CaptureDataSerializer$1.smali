.class final Lcom/android/camera/util/CaptureDataSerializer$1;
.super Ljava/lang/Object;
.source "CaptureDataSerializer.java"

# interfaces
.implements Lcom/android/camera/util/CaptureDataSerializer$Writeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/CaptureDataSerializer;->dumpMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Ljava/io/Writer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$metadata:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/util/CaptureDataSerializer$1;->val$metadata:Landroid/hardware/camera2/CaptureRequest;

    iput-object p2, p0, Lcom/android/camera/util/CaptureDataSerializer$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/Writer;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    iget-object v2, p0, Lcom/android/camera/util/CaptureDataSerializer$1;->val$metadata:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/util/CaptureDataSerializer$1;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 100
    .local v0, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    const-string v3, "    %s\n"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 101
    const-string v3, "        %s\n"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/util/CaptureDataSerializer$1;->val$metadata:Landroid/hardware/camera2/CaptureRequest;

    .line 102
    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/util/CaptureDataSerializer;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 101
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v0    # "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    :cond_0
    return-void
.end method
