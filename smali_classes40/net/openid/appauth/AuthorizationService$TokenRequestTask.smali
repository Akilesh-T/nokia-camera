.class Lnet/openid/appauth/AuthorizationService$TokenRequestTask;
.super Landroid/os/AsyncTask;
.source "AuthorizationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

.field private mException:Lnet/openid/appauth/AuthorizationException;

.field private mRequest:Lnet/openid/appauth/TokenRequest;

.field final synthetic this$0:Lnet/openid/appauth/AuthorizationService;


# direct methods
.method constructor <init>(Lnet/openid/appauth/AuthorizationService;Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V
    .locals 0
    .param p2, "request"    # Lnet/openid/appauth/TokenRequest;
    .param p3, "callback"    # Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .prologue
    .line 214
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->this$0:Lnet/openid/appauth/AuthorizationService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 215
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    .line 216
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .line 217
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 221
    iget-object v7, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    invoke-virtual {v7}, Lnet/openid/appauth/TokenRequest;->getFormUrlEncodedRequestBody()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "queryData":Ljava/lang/String;
    const/4 v2, 0x0

    .line 224
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->this$0:Lnet/openid/appauth/AuthorizationService;

    invoke-static {v7}, Lnet/openid/appauth/AuthorizationService;->access$000(Lnet/openid/appauth/AuthorizationService;)Lnet/openid/appauth/AuthorizationService$UrlBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    iget-object v8, v8, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v8, v8, Lnet/openid/appauth/AuthorizationServiceConfiguration;->tokenEndpoint:Landroid/net/Uri;

    .line 225
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 224
    invoke-interface {v7, v8}, Lnet/openid/appauth/AuthorizationService$UrlBuilder;->buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 226
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 227
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 230
    const-string v7, "Accept"

    const-string v8, "application/json"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 233
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 234
    const-string v7, "Content-Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 236
    .local v6, "wr":Ljava/io/OutputStreamWriter;
    invoke-virtual {v6, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 239
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 240
    invoke-static {v2}, Lnet/openid/appauth/Utils;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "response":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-static {v2}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 253
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "wr":Ljava/io/OutputStreamWriter;
    :goto_0
    return-object v7

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v7, "Failed to complete exchange request"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lnet/openid/appauth/Logger;->debugWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    sget-object v7, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v7, v1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v7

    iput-object v7, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-static {v2}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 253
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 246
    :catch_1
    move-exception v1

    .line 247
    .local v1, "ex":Lorg/json/JSONException;
    :try_start_2
    const-string v7, "Failed to complete exchange request"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lnet/openid/appauth/Logger;->debugWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    sget-object v7, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v7, v1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v7

    iput-object v7, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    invoke-static {v2}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .end local v1    # "ex":Lorg/json/JSONException;
    :catchall_0
    move-exception v7

    invoke-static {v2}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 206
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 258
    iget-object v4, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;

    if-eqz v4, :cond_0

    .line 259
    iget-object v4, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    iget-object v5, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;

    invoke-interface {v4, v8, v5}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 296
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    :try_start_0
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "error":Ljava/lang/String;
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->byString(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v4

    const-string v5, "error_description"

    .line 270
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "error_uri"

    .line 272
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    invoke-static {v6}, Lnet/openid/appauth/UriUtil;->parseUriIfAvailable(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 267
    invoke-static {v4, v0, v5, v6}, Lnet/openid/appauth/AuthorizationException;->fromOAuthTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 278
    .end local v0    # "error":Ljava/lang/String;
    .local v1, "ex":Lnet/openid/appauth/AuthorizationException;
    :goto_1
    iget-object v4, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    invoke-interface {v4, v8, v1}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    goto :goto_0

    .line 273
    .end local v1    # "ex":Lnet/openid/appauth/AuthorizationException;
    :catch_0
    move-exception v2

    .line 274
    .local v2, "jsonEx":Lorg/json/JSONException;
    sget-object v4, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v4, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    .restart local v1    # "ex":Lnet/openid/appauth/AuthorizationException;
    goto :goto_1

    .line 284
    .end local v1    # "ex":Lnet/openid/appauth/AuthorizationException;
    .end local v2    # "jsonEx":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    new-instance v4, Lnet/openid/appauth/TokenResponse$Builder;

    iget-object v5, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    invoke-direct {v4, v5}, Lnet/openid/appauth/TokenResponse$Builder;-><init>(Lnet/openid/appauth/TokenRequest;)V

    invoke-virtual {v4, p1}, Lnet/openid/appauth/TokenResponse$Builder;->fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lnet/openid/appauth/TokenResponse$Builder;->build()Lnet/openid/appauth/TokenResponse;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 293
    .local v3, "response":Lnet/openid/appauth/TokenResponse;
    const-string v4, "Token exchange with %s completed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    iget-object v7, v7, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v7, v7, Lnet/openid/appauth/AuthorizationServiceConfiguration;->tokenEndpoint:Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lnet/openid/appauth/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-object v4, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    invoke-interface {v4, v3, v8}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    goto :goto_0

    .line 285
    .end local v3    # "response":Lnet/openid/appauth/TokenResponse;
    :catch_1
    move-exception v2

    .line 286
    .restart local v2    # "jsonEx":Lorg/json/JSONException;
    iget-object v4, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    sget-object v5, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 287
    invoke-static {v5, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v5

    .line 286
    invoke-interface {v4, v8, v5}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    goto :goto_0
.end method
