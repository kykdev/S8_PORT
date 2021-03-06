.class public final Landroid/security/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

.field private static final DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

.field private static final DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

.field private static final DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private final mAttestationChallenge:[B

.field private final mBlockModes:[Ljava/lang/String;

.field private final mCertificateNotAfter:Ljava/util/Date;

.field private final mCertificateNotBefore:Ljava/util/Date;

.field private final mCertificateSerialNumber:Ljava/math/BigInteger;

.field private final mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInvalidatedByBiometricEnrollment:Z

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mUid:I

.field private final mUniqueIdIncluded:Z

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationValidWhileOnBody:Z

.field private final mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string/jumbo v1, "CN=fake"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    const-wide v2, 0x23d19d43c00L

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZI[BZZZ)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "keyStoreAlias must not be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v9

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key generation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/security/keystore/Utils;->getUserId(IZ)I

    move-result v8

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    throw v9

    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    sget-object p5, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    :cond_2
    if-nez p7, :cond_3

    sget-object p7, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    :cond_3
    if-nez p8, :cond_4

    sget-object p8, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    :cond_4
    if-nez p6, :cond_5

    sget-object p6, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    :cond_5
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "certificateNotAfter < certificateNotBefore"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUid:I

    iput p3, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    iput-object p4, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p5, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v0, p6

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    invoke-static/range {p7 .. p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static/range {p8 .. p8}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static/range {p9 .. p9}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static/range {p10 .. p10}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static/range {p11 .. p11}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move/from16 v0, p12

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    invoke-static/range {p13 .. p13}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    invoke-static/range {p14 .. p14}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static/range {p15 .. p15}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static/range {p16 .. p16}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    move/from16 v0, p17

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    move/from16 v0, p18

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    move/from16 v0, p19

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    invoke-static/range {p20 .. p20}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    move/from16 v0, p21

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    move/from16 v0, p22

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v0, p23

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getAttestationChallenge()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateNotAfter()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateNotBefore()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    return v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getPurposes()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUid:I

    return v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public isDigestsSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidatedByBiometricEnrollment()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public isRandomizedEncryptionRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public isUniqueIdIncluded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method
