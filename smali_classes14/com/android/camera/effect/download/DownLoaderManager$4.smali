.class Lcom/android/camera/effect/download/DownLoaderManager$4;
.super Ljava/lang/Object;
.source "DownLoaderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/download/DownLoaderManager;->downloadJasonRunnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/download/DownLoaderManager;

.field final synthetic val$jsonName:Ljava/lang/String;

.field final synthetic val$jsonNotifyUI:Ljava/lang/String;

.field final synthetic val$jsonUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/download/DownLoaderManager;

    .prologue
    .line 835
    iput-object p1, p0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    iput-object p2, p0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 838
    const/4 v15, 0x0

    .line 839
    .local v15, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 840
    .local v9, "dos":Ljava/io/DataOutputStream;
    const/4 v7, 0x0

    .line 841
    .local v7, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 842
    .local v5, "bis":Ljava/io/BufferedInputStream;
    const/16 v17, 0x0

    .line 843
    .local v17, "jsonData":Ljava/lang/String;
    const/4 v13, 0x0

    .line 846
    .local v13, "errorInputStream":Ljava/io/InputStream;
    const-string v21, "DownLoaderManager"

    const-string v22, "download json File download start!!"

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 851
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "POST"

    invoke-static/range {v21 .. v23}, Lcom/android/camera/effect/download/DownLoaderManager;->access$000(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v15

    .line 852
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 853
    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v8, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 856
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .local v10, "dos":Ljava/io/DataOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "notify_ui_sticker_json_download"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->STICKER:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ordinal()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/download/DownLoaderManager;->access$500(Lcom/android/camera/effect/download/DownLoaderManager;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 862
    :goto_0
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 863
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 864
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    .line 865
    .local v19, "resultCode":I
    const-string v21, "DownLoaderManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "resultCode(downloadJasonRunnable) = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const/16 v21, 0xc8

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 868
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 870
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .local v6, "bis":Ljava/io/BufferedInputStream;
    const/16 v18, 0x0

    .line 871
    .local v18, "len":I
    const/16 v21, 0x400

    :try_start_3
    move/from16 v0, v21

    new-array v4, v0, [B

    .line 872
    .local v4, "arr":[B
    :goto_1
    invoke-virtual {v6, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v18

    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 873
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v8, v4, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 874
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 921
    .end local v4    # "arr":[B
    :catch_0
    move-exception v11

    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .line 922
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .end local v18    # "len":I
    .end local v19    # "resultCode":I
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 923
    const-string v21, "DownLoaderManager"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 926
    if-eqz v13, :cond_0

    .line 928
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 932
    const/4 v13, 0x0

    .line 936
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_3
    if-eqz v5, :cond_1

    .line 938
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 942
    const/4 v5, 0x0

    .line 945
    :cond_1
    :goto_4
    if-eqz v7, :cond_2

    .line 947
    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 951
    const/4 v7, 0x0

    .line 954
    :cond_2
    :goto_5
    if-eqz v15, :cond_3

    .line 955
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 958
    :cond_3
    :goto_6
    return-void

    .line 859
    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ANIMOJI:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ordinal()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/download/DownLoaderManager;->access$500(Lcom/android/camera/effect/download/DownLoaderManager;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 921
    :catch_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 877
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "arr":[B
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v18    # "len":I
    .restart local v19    # "resultCode":I
    :cond_5
    :try_start_9
    const-string v21, "UTF-8"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 878
    if-eqz v17, :cond_10

    .line 879
    const-string v21, "DownLoaderManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "jsonData = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonName:Ljava/lang/String;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/effect/download/DownLoaderManager;->access$600(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 882
    .local v16, "isWrittenToDisk":Z
    if-eqz v16, :cond_f

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v23, "notify_ui_sticker_json_download"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    sget-object v21, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->STICKER:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ordinal()I

    move-result v21

    :goto_7
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/camera/effect/download/DownLoaderManager;->access$700(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "notify_ui_sticker_json_download"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 889
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "cloud_sticker_data_original.json"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 890
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "cloud_sticker_data_tmp.json"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "cloud_sticker_data_original.json"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/util/EffectFileUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    new-instance v21, Lcom/android/camera/effect/util/JsonMerge;

    invoke-direct/range {v21 .. v21}, Lcom/android/camera/effect/util/JsonMerge;-><init>()V

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/effect/util/JsonMerge;->startMergeJsonFile(I)V

    .line 898
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v16    # "isWrittenToDisk":Z
    :goto_9
    move-object v5, v6

    .line 926
    .end local v4    # "arr":[B
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .end local v18    # "len":I
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    :goto_a
    if-eqz v13, :cond_6

    .line 928
    :try_start_a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 932
    const/4 v13, 0x0

    .line 936
    :cond_6
    :goto_b
    if-eqz v5, :cond_7

    .line 938
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 942
    const/4 v5, 0x0

    .line 945
    :cond_7
    :goto_c
    if-eqz v8, :cond_14

    .line 947
    :try_start_c
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 951
    const/4 v7, 0x0

    .line 954
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_d
    if-eqz v15, :cond_13

    .line 955
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .line 886
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "arr":[B
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v16    # "isWrittenToDisk":Z
    .restart local v18    # "len":I
    :cond_8
    :try_start_d
    sget-object v21, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ANIMOJI:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ordinal()I

    move-result v21

    goto/16 :goto_7

    .line 893
    :cond_9
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "cloud_animoji_data_original.json"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 894
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "cloud_animoji_data_tmp.json"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "cloud_animoji_data_original.json"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/util/EffectFileUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    new-instance v21, Lcom/android/camera/effect/util/JsonMerge;

    invoke-direct/range {v21 .. v21}, Lcom/android/camera/effect/util/JsonMerge;-><init>()V

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/effect/util/JsonMerge;->startMergeJsonFile(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_8

    .line 926
    .end local v4    # "arr":[B
    .end local v16    # "isWrittenToDisk":Z
    :catchall_0
    move-exception v21

    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .end local v18    # "len":I
    .end local v19    # "resultCode":I
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    :goto_e
    if-eqz v13, :cond_a

    .line 928
    :try_start_e
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 932
    const/4 v13, 0x0

    .line 936
    :cond_a
    :goto_f
    if-eqz v5, :cond_b

    .line 938
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 942
    const/4 v5, 0x0

    .line 945
    :cond_b
    :goto_10
    if-eqz v7, :cond_c

    .line 947
    :try_start_10
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 951
    const/4 v7, 0x0

    .line 954
    :cond_c
    :goto_11
    if-eqz v15, :cond_d

    .line 955
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v21

    .line 900
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "arr":[B
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v16    # "isWrittenToDisk":Z
    .restart local v18    # "len":I
    .restart local v19    # "resultCode":I
    :cond_e
    :try_start_11
    const-string v21, "DownLoaderManager"

    const-string v22, "download json File download success, but not need merge !!"

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 905
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 908
    .end local v16    # "isWrittenToDisk":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_9

    .line 911
    .end local v4    # "arr":[B
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .end local v18    # "len":I
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    :cond_11
    :try_start_12
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    .line 912
    invoke-static {v13}, Lcom/android/camera/effect/util/EffectUtil;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 913
    .local v14, "errorMessage":Ljava/lang/String;
    const/16 v20, 0x0

    .line 914
    .local v20, "resultMessage":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonEffectCloudError(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectClouldErrorInfo;

    move-result-object v12

    .line 915
    .local v12, "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    if-eqz v12, :cond_12

    .line 916
    invoke-virtual {v12}, Lcom/android/camera/effect/util/EffectClouldErrorInfo;->getError()Ljava/lang/String;

    move-result-object v20

    .line 918
    :cond_12
    const-string v21, "DownLoaderManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "errorMessage(downloadJasonRunnable) = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",resultMessage = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonNotifyUI:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$4;->val$jsonName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_a

    .line 926
    .end local v12    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    .end local v14    # "errorMessage":Ljava/lang/String;
    .end local v19    # "resultCode":I
    .end local v20    # "resultMessage":Ljava/lang/String;
    :catchall_1
    move-exception v21

    move-object v7, v8

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_e

    .line 929
    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v19    # "resultCode":I
    :catch_2
    move-exception v11

    .line 930
    .local v11, "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 932
    const/4 v13, 0x0

    .line 933
    goto/16 :goto_b

    .line 932
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v21

    const/4 v13, 0x0

    throw v21

    .line 939
    :catch_3
    move-exception v11

    .line 940
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 942
    const/4 v5, 0x0

    .line 943
    goto/16 :goto_c

    .line 942
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v21

    const/4 v5, 0x0

    throw v21

    .line 948
    :catch_4
    move-exception v11

    .line 949
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 951
    const/4 v7, 0x0

    .line 952
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_d

    .line 951
    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v21

    const/4 v7, 0x0

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    throw v21

    .line 929
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .end local v19    # "resultCode":I
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    .local v11, "e":Ljava/lang/Exception;
    :catch_5
    move-exception v11

    .line 930
    .local v11, "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 932
    const/4 v13, 0x0

    .line 933
    goto/16 :goto_3

    .line 932
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v21

    const/4 v13, 0x0

    throw v21

    .line 939
    :catch_6
    move-exception v11

    .line 940
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_17
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 942
    const/4 v5, 0x0

    .line 943
    goto/16 :goto_4

    .line 942
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v21

    const/4 v5, 0x0

    throw v21

    .line 948
    :catch_7
    move-exception v11

    .line 949
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_18
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 951
    const/4 v7, 0x0

    .line 952
    goto/16 :goto_5

    .line 951
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v21

    const/4 v7, 0x0

    throw v21

    .line 929
    :catch_8
    move-exception v11

    .line 930
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_19
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 932
    const/4 v13, 0x0

    .line 933
    goto/16 :goto_f

    .line 932
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v21

    const/4 v13, 0x0

    throw v21

    .line 939
    :catch_9
    move-exception v11

    .line 940
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_1a
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 942
    const/4 v5, 0x0

    .line 943
    goto/16 :goto_10

    .line 942
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_9
    move-exception v21

    const/4 v5, 0x0

    throw v21

    .line 948
    :catch_a
    move-exception v11

    .line 949
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_1b
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 951
    const/4 v7, 0x0

    .line 952
    goto/16 :goto_11

    .line 951
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_a
    move-exception v21

    const/4 v7, 0x0

    throw v21

    .line 926
    :catchall_b
    move-exception v21

    goto/16 :goto_e

    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_c
    move-exception v21

    move-object v7, v8

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_e

    .line 921
    :catch_b
    move-exception v11

    goto/16 :goto_2

    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v11

    move-object v7, v8

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2

    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v19    # "resultCode":I
    :cond_13
    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    :cond_14
    move-object v7, v8

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_d
.end method
