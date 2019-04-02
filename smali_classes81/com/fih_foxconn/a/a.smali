.class public final Lcom/fih_foxconn/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fih_foxconn/a/a$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fih_foxconn/a/a$a;",
            ">;"
        }
    .end annotation

    const/16 v9, 0xff

    const/4 v8, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v9, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :goto_0
    return-object v0

    :cond_1
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v3, v1

    add-int/lit8 v1, v3, -0x2

    :try_start_2
    sget v4, Lcom/fih_foxconn/a/c;->a:I

    if-ge v1, v4, :cond_7

    new-instance v1, Lcom/fih_foxconn/a/a$a;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/fih_foxconn/a/a$a;-><init>(B)V

    iput v2, v1, Lcom/fih_foxconn/a/a$a;->a:I

    iput v3, v1, Lcom/fih_foxconn/a/a$a;->b:I

    add-int/lit8 v2, v3, -0x2

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/fih_foxconn/a/a$a;->c:[B

    iget-object v2, v1, Lcom/fih_foxconn/a/a$a;->c:[B

    const/4 v4, 0x0

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eq v1, v8, :cond_9

    if-eq v1, v9, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eq v2, v9, :cond_3

    if-ne v2, v8, :cond_4

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_4
    const/16 v1, 0xda

    if-ne v2, v1, :cond_5

    :try_start_6
    new-instance v1, Lcom/fih_foxconn/a/a$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/fih_foxconn/a/a$a;-><init>(B)V

    iput v2, v1, Lcom/fih_foxconn/a/a$a;->a:I

    const/4 v2, -0x1

    iput v2, v1, Lcom/fih_foxconn/a/a$a;->b:I

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/fih_foxconn/a/a$a;->c:[B

    iget-object v2, v1, Lcom/fih_foxconn/a/a$a;->c:[B

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/fih_foxconn/a/a$a;->c:[B

    array-length v4, v4

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_5
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v3

    if-eq v1, v8, :cond_6

    if-ne v3, v8, :cond_1

    :cond_6
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :cond_7
    :try_start_a
    sget v1, Lcom/fih_foxconn/a/c;->a:I

    new-array v4, v1, [B

    const/4 v1, 0x0

    array-length v5, v4

    invoke-virtual {p0, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    const-string v1, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-static {v4, v1}, Lcom/fih_foxconn/a/a;->a([BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/fih_foxconn/a/a$a;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/fih_foxconn/a/a$a;-><init>(B)V

    iput v2, v1, Lcom/fih_foxconn/a/a$a;->a:I

    array-length v2, v4

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/fih_foxconn/a/a$a;->b:I

    iput-object v4, v1, Lcom/fih_foxconn/a/a$a;->c:[B

    add-int/lit8 v2, v3, -0x2

    array-length v3, v4

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    :catch_4
    move-exception v1

    :try_start_b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Could not parse file."

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :cond_8
    :try_start_d
    new-instance v1, Lcom/fih_foxconn/a/a$a;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/fih_foxconn/a/a$a;-><init>(B)V

    iput v2, v1, Lcom/fih_foxconn/a/a$a;->a:I

    iput v3, v1, Lcom/fih_foxconn/a/a$a;->b:I

    add-int/lit8 v2, v3, -0x2

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/fih_foxconn/a/a$a;->c:[B

    const/4 v2, 0x0

    iget-object v5, v1, Lcom/fih_foxconn/a/a$a;->c:[B

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/fih_foxconn/a/a$a;->c:[B

    array-length v5, v4

    add-int/lit8 v3, v3, -0x2

    array-length v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :goto_2
    throw v0

    :cond_9
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto/16 :goto_0

    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method private static a(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fih_foxconn/a/a$a;",
            ">;",
            "Lcom/adobe/xmp/XMPMeta;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fih_foxconn/a/a$a;",
            ">;"
        }
    .end annotation

    const/16 v7, 0x1d

    const/4 v0, 0x0

    const/16 v6, 0xe1

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_1

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    invoke-static {p1, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    array-length v4, v1

    const v5, 0xffde

    if-le v4, v5, :cond_2

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object p0, v0

    goto :goto_0

    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1d

    new-array v0, v0, [B

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v2, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v1

    invoke-static {v1, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/fih_foxconn/a/a$a;

    invoke-direct {v4, v2}, Lcom/fih_foxconn/a/a$a;-><init>(B)V

    iput v6, v4, Lcom/fih_foxconn/a/a$a;->a:I

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    iput v1, v4, Lcom/fih_foxconn/a/a$a;->b:I

    iput-object v0, v4, Lcom/fih_foxconn/a/a$a;->c:[B

    move v1, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/a/a$a;

    iget v0, v0, Lcom/fih_foxconn/a/a$a;->a:I

    if-ne v0, v6, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/a/a$a;

    iget-object v0, v0, Lcom/fih_foxconn/a/a$a;->c:[B

    const-string v5, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-static {v0, v5}, Lcom/fih_foxconn/a/a;->a([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/a/a$a;

    iget v0, v0, Lcom/fih_foxconn/a/a$a;->a:I

    if-ne v0, v6, :cond_5

    move v0, v3

    :goto_2
    invoke-interface {p0, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private static a(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/fih_foxconn/a/a$a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xff

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/a/a$a;

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    iget v2, v0, Lcom/fih_foxconn/a/a$a;->a:I

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    iget v2, v0, Lcom/fih_foxconn/a/a$a;->b:I

    if-lez v2, :cond_0

    iget v2, v0, Lcom/fih_foxconn/a/a$a;->b:I

    shr-int/lit8 v2, v2, 0x8

    iget v3, v0, Lcom/fih_foxconn/a/a$a;->b:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    iget-object v0, v0, Lcom/fih_foxconn/a/a$a;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Lcom/fih_foxconn/a/a;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fih_foxconn/a/a;->a(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "JpegXmpUtil"

    const-string v3, "Read file failed: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-static {v3, v1}, Lcom/fih_foxconn/a/a;->a(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_2
    :try_start_9
    throw v1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_3

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :goto_3
    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :catch_4
    move-exception v1

    const-string v2, "JpegXmpUtil"

    const-string v3, "Write file failed:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v3

    :try_start_d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_3

    :catchall_2
    move-exception v1

    goto :goto_1
.end method

.method private static a([BLjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
