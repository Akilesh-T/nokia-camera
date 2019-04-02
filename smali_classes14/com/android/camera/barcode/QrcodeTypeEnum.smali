.class public Lcom/android/camera/barcode/QrcodeTypeEnum;
.super Ljava/lang/Object;
.source "QrcodeTypeEnum.java"


# static fields
.field public static final ALIPAY_DOWNLOAD_URL:Ljava/lang/String; = "https://d.alipay.com/?nojump=true"

.field public static final ALIPAY_PACKAGE:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final ALIPAY_PAY_ID:Ljava/lang/String; = "https://qr.alipay.com"

.field public static final ALIPAY_PREFIX:Ljava/lang/String; = "alipayqr://platformapi/startapp?saId=10000007&qrcode="

.field public static final ALIPAY_WEB_LOGIN_ID:Ljava/lang/String; = "Cauthcenter_qrcode_login"

.field public static final BLUEGOGO_ID:Ljava/lang/String; = "https://www.bluegogo.com/qrcode.html"

.field public static final EXTRA_APP_DOWNLOAD_URL:Ljava/lang/String; = "appDownLoadUrl"

.field public static final EXTRA_APP_PACKAGE_NAME:Ljava/lang/String; = "appPackageName"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final EXTRA_NEED_PRE_START:Ljava/lang/String; = "needPreStart"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final IQIYI_LOGIN_ID:Ljava/lang/String; = "https://passport.iqiyi.com/apis/qrcode/token_login.action"

.field public static final IQIYI_PACKAGE:Ljava/lang/String; = "com.qiyi.video"

.field public static final IQIYI_WEB_ID:Ljava/lang/String; = "http://www.iqiyi.com/"

.field public static final JD_LOGIN_ID:Ljava/lang/String; = "https://qr.m.jd.com/"

.field public static final JD_MAIN_ID:Ljava/lang/String; = "https://3.cn/hdvcpx"

.field public static final JD_PACKAGE:Ljava/lang/String; = "com.jingdong.app.mall"

.field public static final JD_PRODUCT_INFO_ID:Ljava/lang/String; = "https://item.m.jd.com/product/"

.field public static final MOBIKE_ID:Ljava/lang/String; = "http://www.mobike.com/download/app.html"

.field public static final MOBIKE_PACKAGE:Ljava/lang/String; = "com.mobike.mobikeapp"

.field public static final OFO_ID:Ljava/lang/String; = "http://ofo.so/plate"

.field public static final OFO_PACKAGE:Ljava/lang/String; = "so.ofo.labofo"

.field public static final QQ_DOWNLOAD_URL:Ljava/lang/String; = "http://im.qq.com/mobileqq/touch/index.html"

.field public static final QQ_LOGIN_ID:Ljava/lang/String; = "http://txz.qq.com/"

.field public static final QQ_PACKAGE:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final QQ_USER_INFO_ID:Ljava/lang/String; = "http://qm.qq.com/cgi-bin/qm/qr"

.field public static final SINA_WEIBO_LOGIN_ID:Ljava/lang/String; = "https://passport.weibo.cn/signin/qrcode/"

.field public static final SINA_WEIBO_PACKAGE:Ljava/lang/String; = "com.sina.weibo"

.field public static final SINA_WEIBO_PAPER_ID:Ljava/lang/String; = "http://www.weibo.com/p/"

.field public static final SINA_WEIBO_USER_ID:Ljava/lang/String; = "http://weibo.cn/qr/userinfo"

.field public static final TAOBAO_ID:Ljava/lang/String; = "http://m.tb.cn/"

.field public static final TAOBAO_PACKAGE:Ljava/lang/String; = "com.taobao.taobao"

.field public static final TMALL_PACKAGE:Ljava/lang/String; = "com.tmall.wireless"

.field public static final TMALL_PRODUCT_ID_ONE:Ljava/lang/String; = "http://qazdsa.com/"

.field public static final TMALL_PRODUCT_ID_TWO:Ljava/lang/String; = "http://zmnxbc.com/"

.field public static final WECHAT_AUTH_TENCENT_VIDEO_ID:Ljava/lang/String; = "https://open.weixin.qq.com/"

.field public static final WECHAT_DOWNLOAD_URL:Ljava/lang/String; = "http://weixin.qq.com/d"

.field public static final WECHAT_GROUND_ID:Ljava/lang/String; = "https://weixin.qq.com/"

.field public static final WECHAT_LAUNCHUI:Ljava/lang/String; = "com.tencent.mm.ui.LauncherUI"

.field public static final WECHAT_LOGINUI_1:Ljava/lang/String; = "com.tencent.mm.ui.account.LoginPasswordUI"

.field public static final WECHAT_LOGINUI_2:Ljava/lang/String; = "com.tencent.mm.plugin.account.ui.LoginPasswordUI"

.field public static final WECHAT_MP_ID:Ljava/lang/String; = "https://mp.weixin.qq.com/"

.field public static final WECHAT_PACKAGE:Ljava/lang/String; = "com.tencent.mm"

.field public static final WECHAT_PAY_ID:Ljava/lang/String; = "wxp://f2f0"

.field public static final WECHAT_PHONE_AUTH_ID:Ljava/lang/String; = "https://login.weixin.qq.com/"

.field public static final WECHAT_PUBLIC_ID:Ljava/lang/String; = "http://weixin.qq.com/"

.field public static final WECHAT_USER_ID:Ljava/lang/String; = "https://u.wechat.com/"

.field public static final YOUKU_PACKAGE:Ljava/lang/String; = "com.youku.phone"

.field public static final YOUKU_VIDEO_ID:Ljava/lang/String; = "http://qr.youku.com/"


# instance fields
.field private appPackageName:Ljava/lang/String;

.field private final descriptions:[Ljava/lang/String;

.field private descriptions2:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field scanResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.eg.android.AlipayGphone"

    aput-object v1, v0, v3

    const-string v1, "com.mobike.mobikeapp"

    aput-object v1, v0, v4

    const-string v1, "so.ofo.labofo"

    aput-object v1, v0, v5

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v6

    const-string v1, "com.qiyi.video"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.jingdong.app.mall"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.youku.phone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.taobao.taobao"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/barcode/QrcodeTypeEnum;->descriptions2:[Ljava/lang/String;

    .line 94
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "https://qr.alipay.com"

    aput-object v1, v0, v3

    const-string v1, "http://www.mobike.com/download/app.html"

    aput-object v1, v0, v4

    const-string v1, "http://ofo.so/plate"

    aput-object v1, v0, v5

    const-string v1, "https://u.wechat.com/"

    aput-object v1, v0, v6

    const-string v1, "http://weixin.qq.com/"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wxp://f2f0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "https://open.weixin.qq.com/"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "https://mp.weixin.qq.com/"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "https://weixin.qq.com/"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "https://login.weixin.qq.com/"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "https://passport.iqiyi.com/apis/qrcode/token_login.action"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "http://www.iqiyi.com/"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "http://weibo.cn/qr/userinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "https://passport.weibo.cn/signin/qrcode/"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "http://www.weibo.com/p/"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "https://qr.m.jd.com/"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "https://item.m.jd.com/product/"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "https://3.cn/hdvcpx"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "http://qm.qq.com/cgi-bin/qm/qr"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "http://txz.qq.com/"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "http://qr.youku.com/"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "http://m.tb.cn/"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "http://qazdsa.com/"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "http://zmnxbc.com/"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/barcode/QrcodeTypeEnum;->descriptions:[Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/android/camera/barcode/QrcodeTypeEnum;->mContext:Landroid/content/Context;

    .line 122
    return-void
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/barcode/QrcodeTypeEnum;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 156
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createTaobaoIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.taobao.taobao"

    const-string v2, "com.taobao.browser.BrowserActivity"

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.taobao.taobao"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comeFromType"

    const-string v2, "scan"

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "referrer"

    const-string v2, "http://tb.cn/n/scancode"

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "needPreStart"

    const/4 v2, 0x1

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "packageName"

    const-string v2, "com.taobao.taobao"

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "className"

    const-string v2, "com.taobao.tao.welcome.Welcome"

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method private createWechatCaptureIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.action.BIZSHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    const-string v1, "LauncherUI.From.Scaner.Shortcut"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    return-object v0
.end method


# virtual methods
.method public createMainIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "scanResult"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 142
    :cond_0
    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/barcode/QrcodeTypeEnum;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v1, 0x1

    .line 167
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 25
    .param p1, "scanResult"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v21, "wxd"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " Enum scanResult = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v10, 0x0

    .line 175
    .local v10, "intent":Landroid/content/Intent;
    const/4 v9, -0x1

    .line 176
    .local v9, "indexflg":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/QrcodeTypeEnum;->descriptions:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_1

    .line 177
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/QrcodeTypeEnum;->descriptions:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 178
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->scanResult:Ljava/lang/String;

    .line 179
    add-int/lit8 v9, v7, 0x1

    .line 176
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const-string v21, "wxd"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " Enum indexflg = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    packed-switch v9, :pswitch_data_0

    .line 390
    :goto_1
    const/4 v10, 0x0

    .line 394
    :goto_2
    return-object v10

    .line 187
    :pswitch_0
    const-string v21, "com.eg.android.AlipayGphone"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    .line 188
    const-string v21, "Cauthcenter_qrcode_login"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 189
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.eg.android.AlipayGphone"

    const-string v23, "com.alipay.mobile.scan.as.main.MainCaptureActivity"

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto :goto_2

    .line 191
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "alipayqr://platformapi/startapp?saId=10000007&qrcode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 193
    goto :goto_2

    .line 195
    :pswitch_1
    const-string v21, "com.mobike.mobikeapp"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    .line 196
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.mobike.mobikeapp"

    const-string v23, "com.mobike.mobikeapp.SplashActivity"

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 197
    goto :goto_2

    .line 199
    :pswitch_2
    const-string v21, "so.ofo.labofo"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    .line 200
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "so.ofo.labofo"

    const-string v23, "so.ofo.labofo.activities.journey.ScanQrActivity"

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 201
    goto :goto_2

    .line 209
    :pswitch_3
    const-string v21, "com.tencent.mm"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createWechatCaptureIntent()Landroid/content/Intent;

    move-result-object v10

    .line 211
    const-string v21, "com.tencent.mm"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v21, "com.tencent.mm"

    const-string v22, "com.tencent.mm.ui.LauncherUI"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 216
    :pswitch_4
    const-string v21, "com.qiyi.video"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    .line 217
    const-string v21, "http://www.iqiyi.com/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "qr=page"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 218
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v21, "qiyimobile://self/res.made?identifier=qymobile&"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v15, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 221
    .local v16, "temps":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    aget-object v12, v16, v21

    .line 222
    .local v12, "s":Ljava/lang/String;
    const-string v23, "category_id="

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 223
    const-string v23, "cid="

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_3
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 225
    :cond_4
    const-string v23, "id="

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 226
    const-string v23, "&aid="

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 246
    .end local v12    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 247
    .local v4, "e":Ljava/lang/Exception;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.qiyi.video"

    const-string v23, "com.qiyi.video.WelcomeActivity"

    .line 248
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_2

    .line 228
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v12    # "s":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v23, "tvid="

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 229
    const-string v23, "&tvid="

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const/16 v23, 0x5

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v23, "&to=0"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 232
    :cond_6
    const-string v23, "fromtype="

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 233
    const-string v23, "&from_type="

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/16 v23, 0x9

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 235
    :cond_7
    const-string v23, "subtype="

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 236
    const-string v23, "&from_sub_type="

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 238
    :cond_8
    const-string v23, "progress="

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 239
    const-string v23, "&progress="

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const/16 v23, 0x9

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 243
    .end local v12    # "s":Ljava/lang/String;
    :cond_9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.qiyi.video"

    .line 244
    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.qiyi.video"

    const-string v23, "org.iqiyi.video.activity.PlayerActivity"

    .line 245
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto/16 :goto_2

    .line 251
    .end local v15    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "temps":[Ljava/lang/String;
    :cond_a
    const-string v21, "android.permission.CAMERA"

    const-string v22, "com.qiyi.video"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/camera/barcode/QrcodeTypeEnum;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 252
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.qiyi.video"

    const-string v23, "org.qiyi.android.video.activitys.NotSupportMWJumpActivity"

    .line 253
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const v22, 0x8000

    .line 254
    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "PAGE_ID"

    const/16 v23, 0x1

    .line 255
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_2

    .line 257
    :cond_b
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.qiyi.video"

    const-string v23, "com.qiyi.video.WelcomeActivity"

    .line 258
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 261
    goto/16 :goto_2

    .line 265
    :pswitch_5
    const-string v21, "com.sina.weibo"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    .line 266
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 267
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "http://weibo.cn/qr/userinfo"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 268
    const-string v21, "="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v20, v21, v22

    .line 269
    .local v20, "userInfo":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sinaweibo://userinfo?uid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "data":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 271
    const-string v21, "com.sina.weibo"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v21, "com.sina.weibo"

    const-string v22, "com.sina.weibo.page.ProfileInfoActivity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 273
    .end local v3    # "data":Ljava/lang/String;
    .end local v20    # "userInfo":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "https://passport.weibo.cn/signin/qrcode/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 274
    const-string v21, "sourcetype"

    const-string v22, "qrcode"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v21, "com_sina_weibo_weibobrowser_url"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v21, "com.sina.weibo"

    const-string v22, "com.sina.weibo.browser.WeiboBrowser"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 278
    :cond_d
    const-string v21, "/p/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x3f

    const/16 v23, 0x26

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v20

    .line 279
    .restart local v20    # "userInfo":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sinaweibo://userinfo?uid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .restart local v3    # "data":Ljava/lang/String;
    const-string v21, "codestr"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 282
    const-string v21, "com.sina.weibo"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v21, "com.sina.weibo"

    const-string v22, "com.sina.weibo.page.ProfileInfoActivity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 289
    .end local v3    # "data":Ljava/lang/String;
    .end local v20    # "userInfo":Ljava/lang/String;
    :pswitch_6
    const-string v21, "com.jingdong.app.mall"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    .line 291
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "https://item.m.jd.com/product/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 292
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.jingdong.app.mall"

    const-string v23, "com.jd.lib.productdetail.ProductDetailActivity"

    .line 293
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "id"

    const-string v23, "_"

    .line 294
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "fromSource"

    const-string v23, "JdScan"

    .line 295
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_2

    .line 296
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "https://3.cn/hdvcpx"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 297
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "android.intent.action.MAIN"

    .line 298
    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "android.intent.category.LAUNCHER"

    .line 299
    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.jingdong.app.mall"

    const-string v23, "com.jingdong.app.mall.main.MainActivity"

    .line 300
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_2

    .line 302
    :cond_f
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.jingdong.app.mall"

    const-string v23, "com.jd.lib.login.ScanCodeLoginActivity"

    .line 303
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "key"

    const-string v23, "="

    .line 304
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "fromHistory"

    const/16 v23, 0x0

    .line 305
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    goto/16 :goto_2

    .line 307
    :catch_1
    move-exception v4

    .line 308
    .restart local v4    # "e":Ljava/lang/Exception;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.jingdong.app.mall"

    const-string v23, "com.jingdong.app.mall.main.MainActivity"

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 310
    goto/16 :goto_2

    .line 313
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_7
    const-string v21, "com.tencent.mobileqq"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    .line 314
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.tencent.mobileqq"

    const-string v23, "com.tencent.biz.qrcode.activity.ScannerActivity"

    .line 315
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "needPreStart"

    const/16 v23, 0x1

    .line 316
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "packageName"

    const-string v23, "com.tencent.mobileqq"

    .line 317
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "className"

    const-string v23, "com.tencent.mobileqq.activity.SplashActivity"

    .line 318
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 319
    goto/16 :goto_2

    .line 321
    :pswitch_8
    const-string v21, "com.youku.phone"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    .line 322
    const-string v21, "youku://capture"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.youku.phone"

    const-string v23, "com.youku.saosao.activity.CaptureActivity"

    .line 323
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.youku.phone"

    .line 324
    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "needPreStart"

    const/16 v23, 0x1

    .line 325
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "packageName"

    const-string v23, "com.youku.phone"

    .line 326
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "className"

    const-string v23, "com.youku.phone.ActivityWelcome"

    .line 327
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 328
    goto/16 :goto_2

    .line 332
    :pswitch_9
    const-string v21, "com.tmall.wireless"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/QrcodeTypeEnum;->appPackageName:Ljava/lang/String;

    .line 333
    const/4 v10, 0x0

    .line 334
    const-string v13, "_tbScancodeApproach_=scan"

    .line 335
    .local v13, "scanFlag":Ljava/lang/String;
    const-string v21, "http://m.tb.cn/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 336
    const-string v21, "?"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 337
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createTaobaoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_1

    .line 339
    :cond_10
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createTaobaoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_1

    .line 342
    :cond_11
    const-string v21, "com.tmall.wireless"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 343
    const-string v14, "spm=a1z60.7906370.CameraScanner.1"

    .line 344
    .local v14, "spmParam":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .local v19, "url":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v11, v0, [Ljava/lang/String;

    .line 346
    .local v11, "params":[Ljava/lang/String;
    const-string v21, "?"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 347
    const-string v21, "&"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v21, "\\?"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 352
    :goto_5
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v21, "tmall://page.tm/webview?url="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .local v18, "uriData":Ljava/lang/StringBuilder;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/4 v7, 0x1

    :goto_6
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_13

    .line 355
    const-string v21, "&"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v11, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 350
    .end local v18    # "uriData":Ljava/lang/StringBuilder;
    :cond_12
    const-string v21, "?"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 357
    .restart local v18    # "uriData":Ljava/lang/StringBuilder;
    :cond_13
    const-string v21, "&"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string v21, "com.tmall.wireless.action.navigator.INTERNAL_NAVIGATION"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .restart local v10    # "intent":Landroid/content/Intent;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 361
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 362
    const-string v21, "com.tmall.wireless.category.navigator.INTERNAL_NAVIGATION"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v21, "com.tmall.wireless"

    const-string v22, "com.tmall.wireless.webview.TMCommonWebViewActivity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v21, "com.tmall.wireless"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v21, "com.tmall.wireless.navigator.orgin.url"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v21, "needPreStart"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const-string v21, "packageName"

    const-string v22, "com.tmall.wireless"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v21, "className"

    const-string v22, "com.tmall.wireless.splash.TMSplashActivity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 371
    .end local v11    # "params":[Ljava/lang/String;
    .end local v14    # "spmParam":Ljava/lang/String;
    .end local v17    # "uri":Landroid/net/Uri;
    .end local v18    # "uriData":Ljava/lang/StringBuilder;
    .end local v19    # "url":Ljava/lang/StringBuilder;
    :cond_14
    const-string v21, "http://qazdsa.com/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 372
    const-string v21, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 373
    .restart local v16    # "temps":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v21, "https://b.tb.cn/"

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .local v6, "https":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v21, "http://b.tb.cn/"

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .local v5, "http":Ljava/lang/StringBuilder;
    const-string v21, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v8, v21, 0x1

    .line 376
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?xdomain=qazdsa.com&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?xdomain=qazdsa.com&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createTaobaoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 379
    const-string v21, "URL_REFERER_ORIGIN"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 381
    .end local v5    # "http":Ljava/lang/StringBuilder;
    .end local v6    # "https":Ljava/lang/StringBuilder;
    .end local v8    # "index":I
    .end local v16    # "temps":[Ljava/lang/String;
    :cond_15
    const-string v21, "?"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 382
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createTaobaoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_1

    .line 384
    :cond_16
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/camera/barcode/QrcodeTypeEnum;->createTaobaoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_1

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
