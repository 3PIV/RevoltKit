//
// SessionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SessionAPI {

    /**
     Delete All Sessions
     
     - parameter revokeSelf: (query) Whether to revoke current session too. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authSessionAllDelete(revokeSelf: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        authSessionAllDeleteWithRequestBuilder(revokeSelf: revokeSelf).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete All Sessions
     - DELETE /auth/session/all
     - Delete all active sesssions.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter revokeSelf: (query) Whether to revoke current session too. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func authSessionAllDeleteWithRequestBuilder(revokeSelf: Bool? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/auth/session/all"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "revoke_self": revokeSelf?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Fetch Sessions
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authSessionAllGet(apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: [SessionInfoModel]?, _ error: Error?) -> Void)) {
        authSessionAllGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch Sessions
     - GET /auth/session/all
     - Fetch all sessions.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - returns: RequestBuilder<[SessionInfoModel]> 
     */
    open class func authSessionAllGetWithRequestBuilder() -> RequestBuilder<[SessionInfoModel]> {
        let localVariablePath = "/auth/session/all"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[SessionInfoModel]>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Login
     
     - parameter inlineObject7Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authSessionLoginPost(sessionLoginModel: AuthSessionLoginModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: SessionModel?, _ error: Error?) -> Void)) {
        authSessionLoginPostWithRequestBuilder(inlineObject7Model: sessionLoginModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Login
     - POST /auth/session/login
     - Login to an account.
     - parameter inlineObject7Model: (body)  (optional)
     - returns: RequestBuilder<SessionModel> 
     */
    open class func authSessionLoginPostWithRequestBuilder(sessionLoginModel: AuthSessionLoginModel? = nil) -> RequestBuilder<SessionModel> {
        let localVariablePath = "/auth/session/login"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sessionLoginModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SessionModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Logout
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authSessionLogoutPost(apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        authSessionLogoutPostWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Logout
     - POST /auth/session/logout
     - Close current session.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - returns: RequestBuilder<Void> 
     */
    open class func authSessionLogoutPostWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/auth/session/logout"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Session
     
     - parameter session: (path) Session ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authSessionSessionDelete(session: IdModel, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        authSessionSessionDeleteWithRequestBuilder(session: session).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Session
     - DELETE /auth/session/:session
     - Delete a specific session.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter session: (path) Session ID 
     - returns: RequestBuilder<Void> 
     */
    open class func authSessionSessionDeleteWithRequestBuilder(session: IdModel) -> RequestBuilder<Void> {
        var localVariablePath = "/auth/session/:session"
        let sessionPreEscape = "\(APIHelper.mapValueToPathItem(session))"
        let sessionPostEscape = sessionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{session}", with: sessionPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Edit Session
     
     - parameter session: (path) Session ID 
     - parameter inlineObject8Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authSessionSessionPatch(session: IdModel, editSessionModel: AuthSessionEditSessionModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        authSessionSessionPatchWithRequestBuilder(session: session, inlineObject8Model: editSessionModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Edit Session
     - PATCH /auth/session/:session
     - Edit session information.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter session: (path) Session ID 
     - parameter inlineObject8Model: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func authSessionSessionPatchWithRequestBuilder(session: IdModel, editSessionModel: AuthSessionEditSessionModel? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/auth/session/:session"
        let sessionPreEscape = "\(APIHelper.mapValueToPathItem(session))"
        let sessionPostEscape = sessionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{session}", with: sessionPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: editSessionModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
