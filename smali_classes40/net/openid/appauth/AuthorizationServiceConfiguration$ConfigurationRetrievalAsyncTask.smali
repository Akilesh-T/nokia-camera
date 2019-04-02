.class Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;
.super Landroid/os/AsyncTask;
.source "AuthorizationServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigurationRetrievalAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECTION_READ_TIMEOUT_MS:I = 0x2710

.field private static final CONNECTION_TIMEOUT_MS:I = 0x3a98


# instance fields
.field private mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

.field private mException:Lnet/openid/appauth/AuthorizationException;

.field private mUrl:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "callback"    # Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

    .prologue
    .line 247
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 248
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mUrl:Ljava/net/URL;

    .line 249
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

    .line 251
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->doInBackground([Ljava/lang/Void;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 255
    const/4 v3, 0x0

    .line 257
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 258
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v5, 0x3a98

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 259
    const/16 v5, 0x2710

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 260
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 261
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 262
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 264
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 265
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v3}, Lnet/openid/appauth/Utils;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    .local v4, "json":Lorg/json/JSONObject;
    new-instance v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;

    invoke-direct {v1, v4}, Lnet/openid/appauth/AuthorizationServiceDiscovery;-><init>(Lorg/json/JSONObject;)V

    .line 269
    .local v1, "discovery":Lnet/openid/appauth/AuthorizationServiceDiscovery;
    new-instance v5, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-direct {v5, v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;-><init>(Lnet/openid/appauth/AuthorizationServiceDiscovery;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-static {v3}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 288
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "discovery":Lnet/openid/appauth/AuthorizationServiceDiscovery;
    .end local v4    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 270
    :catch_0
    move-exception v2

    .line 271
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v5, "Network error when retrieving discovery document"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lnet/openid/appauth/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    sget-object v5, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v5, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v5

    iput-object v5, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    invoke-static {v3}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 288
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 275
    :catch_1
    move-exception v2

    .line 276
    .local v2, "ex":Lorg/json/JSONException;
    :try_start_2
    const-string v5, "Error parsing discovery document"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lnet/openid/appauth/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    sget-object v5, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v5, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v5

    iput-object v5, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    invoke-static {v3}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 280
    .end local v2    # "ex":Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 281
    .local v2, "ex":Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
    :try_start_3
    const-string v5, "Malformed discovery document"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lnet/openid/appauth/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    sget-object v5, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->INVALID_DISCOVERY_DOCUMENT:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v5, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v5

    iput-object v5, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    invoke-static {v3}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .end local v2    # "ex":Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
    :catchall_0
    move-exception v5

    invoke-static {v3}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 237
    check-cast p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->onPostExecute(Lnet/openid/appauth/AuthorizationServiceConfiguration;)V

    return-void
.end method

.method protected onPostExecute(Lnet/openid/appauth/AuthorizationServiceConfiguration;)V
    .locals 3
    .param p1, "configuration"    # Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

    invoke-interface {v0, v2, v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;->onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

    invoke-interface {v0, p1, v2}, Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;->onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V

    goto :goto_0
.end method
